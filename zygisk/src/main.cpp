#include <cstring>
#include <android/log.h>
#include "zygisk.hpp"

#define LOG_TAG "FlagSecure"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

using namespace zygisk;

// The JNI function signature for nativeSetSecure:
// private static native void nativeSetSecure(long nativeObject, boolean isSecure);
// We replace it with a no-op

static void fake_nativeSetSecure(JNIEnv *env, jclass clazz, jlong nativeObject, jboolean isSecure) {
    // No-op — never sets the secure flag
    LOGI("nativeSetSecure intercepted, suppressing FLAG_SECURE");
}

class FlagSecureModule : public ModuleBase {
public:
    void onLoad(Api *api, JNIEnv *env) override {
        this->api = api;
        this->env = env;
    }

    void preAppSpecialize(AppSpecializeArgs *args) override {
        // Apply in all apps
        hookSurfaceControl();
    }

    void preServerSpecialize(ServerSpecializeArgs *args) override {
        // Also hook in system_server for WMS-level enforcement
        hookSurfaceControl();
    }

private:
    Api *api;
    JNIEnv *env;

    void hookSurfaceControl() {
        jclass scClass = env->FindClass("android/view/SurfaceControl");
        if (scClass == nullptr) {
            LOGE("Failed to find SurfaceControl class");
            env->ExceptionClear();
            return;
        }

        // Find the existing native method
        JNINativeMethod methods[] = {
            {
                "nativeSetSecure",
                "(JZ)V",
                (void *) fake_nativeSetSecure
            }
        };

        jint result = env->RegisterNatives(scClass, methods, 1);
        if (result != JNI_OK) {
            LOGE("Failed to hook nativeSetSecure, result=%d", result);
            env->ExceptionClear();
        } else {
            LOGI("Successfully hooked nativeSetSecure");
        }

        env->DeleteLocalRef(scClass);
    }
};

REGISTER_ZYGISK_MODULE(FlagSecureModule)