.class Lcom/android/server/wm/AppCompatCameraPolicy;
.super Ljava/lang/Object;
.source "AppCompatCameraPolicy.java"


# instance fields
.field final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field final mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

.field final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field final mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 6
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatTreatmentEnabledAtBuildTime()Z

    move-result v0

    .line 55
    .local v0, "needsDisplayRotationCompatPolicy":Z
    sget-object v1, Landroid/window/DesktopModeFlags;->ENABLE_CAMERA_COMPAT_SIMULATE_REQUESTED_ORIENTATION:Landroid/window/DesktopModeFlags;

    .line 56
    invoke-virtual {v1}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v1}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 58
    .local v1, "needsCameraCompatFreeformPolicy":Z
    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_1

    .line 68
    :cond_2
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 69
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    .line 70
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 71
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    goto :goto_4

    .line 59
    :goto_1
    new-instance v3, Lcom/android/server/wm/CameraStateMonitor;

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p2, v4}, Lcom/android/server/wm/CameraStateMonitor;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 60
    new-instance v3, Lcom/android/server/wm/ActivityRefresher;

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/ActivityRefresher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    .line 61
    nop

    .line 62
    if-eqz v0, :cond_3

    new-instance v3, Lcom/android/server/wm/DisplayRotationCompatPolicy;

    iget-object v4, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    iget-object v5, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-direct {v3, p2, v4, v5}, Lcom/android/server/wm/DisplayRotationCompatPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V

    goto :goto_2

    .line 63
    :cond_3
    move-object v3, v2

    :goto_2
    iput-object v3, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 64
    nop

    .line 65
    if-eqz v1, :cond_4

    new-instance v2, Lcom/android/server/wm/CameraCompatFreeformPolicy;

    iget-object v3, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    iget-object v4, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/wm/CameraCompatFreeformPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V

    goto :goto_3

    .line 66
    :cond_4
    nop

    :goto_3
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    .line 73
    :goto_4
    return-void
.end method

.method static getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;
    .locals 1
    .param p0, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0
.end method

.method static getCameraCompatFreeformMode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 2
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 268
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    .line 269
    .local v0, "cameraPolicy":Lcom/android/server/wm/AppCompatCameraPolicy;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    goto :goto_0

    .line 271
    :cond_0
    const/4 v1, 0x1

    .line 269
    :goto_0
    return v1
.end method

.method static getCameraCompatMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .locals 4
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 250
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    .line 251
    .local v0, "cameraPolicy":Lcom/android/server/wm/AppCompatCameraPolicy;
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 252
    return v1

    .line 255
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->getCameraCompatAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result v2

    goto :goto_0

    .line 257
    :cond_1
    move v2, v1

    :goto_0
    nop

    .line 259
    .local v2, "displayRotationCompatPolicyAspectRatio":F
    iget-object v3, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v3, :cond_2

    .line 260
    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result v1

    goto :goto_1

    .line 261
    :cond_2
    nop

    :goto_1
    nop

    .line 262
    .local v1, "cameraCompatFreeformPolicyAspectRatio":F
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    return v3
.end method

.method static isActivityEligibleForOrientationOverride(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 116
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    .line 117
    .local v0, "cameraPolicy":Lcom/android/server/wm/AppCompatCameraPolicy;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 119
    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isActivityEligibleForOrientationOverride(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 117
    :goto_0
    return v1
.end method

.method private static isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 228
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    .line 229
    .local v0, "cameraPolicy":Lcom/android/server/wm/AppCompatCameraPolicy;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 230
    return v1

    .line 232
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    const/4 v3, 0x1

    nop

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 234
    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    nop

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    .line 238
    invoke-virtual {v2, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    nop

    .line 232
    :goto_0
    return v1
.end method

.method static isFreeformLetterboxingForCameraAllowed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 198
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    .line 199
    .local v0, "cameraPolicy":Lcom/android/server/wm/AppCompatCameraPolicy;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 200
    return v1

    .line 202
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    nop

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    .line 204
    invoke-virtual {v2, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isFreeformLetterboxingForCameraAllowed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 202
    :goto_0
    return v1
.end method

.method static isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 133
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    .line 134
    .local v0, "cameraPolicy":Lcom/android/server/wm/AppCompatCameraPolicy;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 136
    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 134
    :goto_0
    return v1
.end method

.method static onActivityConfigurationChanging(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 96
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    .line 97
    .local v0, "cameraPolicy":Lcom/android/server/wm/AppCompatCameraPolicy;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/wm/ActivityRefresher;->onActivityConfigurationChanging(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 101
    :cond_0
    return-void
.end method

.method static onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 76
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    .line 77
    .local v0, "cameraPolicy":Lcom/android/server/wm/AppCompatCameraPolicy;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityRefresher;->onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V

    .line 80
    :cond_0
    return-void
.end method

.method static shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 209
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    .line 210
    .local v0, "cameraPolicy":Lcom/android/server/wm/AppCompatCameraPolicy;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 211
    return v1

    .line 213
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    nop

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 215
    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    nop

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    .line 218
    invoke-virtual {v2, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 213
    :goto_0
    return v1
.end method

.method static shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 184
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    .line 185
    .local v0, "cameraPolicy":Lcom/android/server/wm/AppCompatCameraPolicy;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    return v1

    .line 188
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    nop

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 190
    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    nop

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    .line 193
    invoke-virtual {v2, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 188
    :goto_0
    return v1
.end method

.method static shouldOverrideMinAspectRatioForCamera(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 279
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 280
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isOverrideMinAspectRatioForCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0
.end method


# virtual methods
.method dispose()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->dispose()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->dispose()V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/CameraStateMonitor;->dispose()V

    .line 161
    :cond_2
    return-void
.end method

.method getOrientation()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->getOrientation()I

    move-result v0

    goto :goto_0

    .line 179
    :cond_0
    const/4 v0, -0x1

    .line 177
    :goto_0
    return v0
.end method

.method getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0
.end method

.method hasCameraCompatFreeformPolicy()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasCameraStateMonitor()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasDisplayRotationCompatPolicy()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onScreenRotationAnimationFinished()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->onScreenRotationAnimationFinished()V

    .line 113
    :cond_0
    return-void
.end method

.method start()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->start()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->start()V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/CameraStateMonitor;->startListeningToCameraState()V

    .line 149
    :cond_2
    return-void
.end method
