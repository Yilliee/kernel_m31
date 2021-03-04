 -0,0 +1,10 @@
#!/bin/sh -x

export ANDROID_MAJOR_VERSION=r
export CROSS_COMPILE=../toolchains/aarch64/bin/aarch64-linux-android-
export CC=../toolchains/clang/bin/clang

make mrproper
make ARCH=arm64 exynos9610-m31dd_defconfig
make ARCH=arm64 -j$(nproc)
