#!/bin/bash -e

export ANDROID_NDK_BUNDLE=r18b

export ANDROID_NDK_${ANDROID_NDK_BUNDLE}=$HOME/android-ndk-${ANDROID_NDK_BUNDLE}

ARCHS=( armeabi-v7a x86 arm64-v8a x86-64 )

for ARCH in "${ARCHS[@]}"; do
    mkdir -p _build/android-${ARCH}
    cmake -H. -B_build/android-${ARCH} -DHUNTER_ROOT=`pwd`/android-${ARCH} -DCMAKE_TOOLCHAIN_FILE=`pwd`/polly/android-ndk-${ANDROID_NDK_BUNDLE}-api-21-${ARCH}-clang-libcxx.cmake
    cmake --build _build/android-${ARCH}
done
