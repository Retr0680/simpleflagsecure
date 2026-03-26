#!/bin/bash
# Requires NDK in PATH or NDK_PATH set
NDK_PATH=${NDK_PATH:-"/opt/android-ndk"}

ABIS=("arm64-v8a" "armeabi-v7a")
BUILD_DIR="build"
MODULE_DIR="zygisk"

mkdir -p $BUILD_DIR

for ABI in "${ABIS[@]}"; do
    echo "[*] Building for $ABI..."
    cmake -B "$BUILD_DIR/$ABI" \
        -DCMAKE_TOOLCHAIN_FILE="$NDK_PATH/build/cmake/android.toolchain.cmake" \
        -DANDROID_ABI=$ABI \
        -DANDROID_PLATFORM=android-35 \
        -DCMAKE_BUILD_TYPE=Release

    cmake --build "$BUILD_DIR/$ABI" --target flagsecure

    mkdir -p "$MODULE_DIR/$ABI"
    cp "$BUILD_DIR/$ABI/libflagsecure.so" "$MODULE_DIR/$ABI.so"
    echo "[+] Done: $MODULE_DIR/$ABI.so"
done

echo "[*] Packaging module zip..."
zip -r simpleflagsecure.zip \
    META-INF/ \
    zygisk/ \
    module.prop \
    customize.sh

echo "[+] simpleflagsecure.zip ready"