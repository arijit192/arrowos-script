#!/bin/sh

git config --global user.email "tukaiari@gmail.com"
git config --global user.name "Arijit Roy"
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
mkdir ~/an
cd ~/an
#repo init --depth=1 -u git://codeaurora.org/platform/manifest.git -b release -m LA.UM.9.6.2.r1-04800-89xx.0.xml
repo init --depth=1 -u https://github.com/ArrowOS/android_manifest.git -b arrow-11.0
#mkdir -p .repo/local_manifests
#curl https://raw.githubusercontent.com/arijit192/arrowos-script/main/roomservice.xml > .repo/local_manifests/roomservice.xml
#git clone https://source.codeaurora.org/quic/la/kernel/msm-4.9 -b LA.UM.9.6.2.r1-04800-89xx.0
#git clone https://source.codeaurora.org/quic/la/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 -b LA.UM.9.6.2.r1-04800-89xx.0
#export CROSS_COMPILE=$(pwd)/aarch64-linux-android-4.9/bin/aarch64-linux-android-
#export ARCH=arm64 && export SUBARCH=arm64
#cd msm-4.9
#mkdir -p out
#make O=out clean
#make O=out mrproper
#make O=out msm8953-perf_defconfig
#make O=out
repo sync
git clone https://github.com/arijit192/android_device_samsung_m11q-WIP device/samsung/m11q -b arrow-11.0
source build/envsetup.sh
#export ALLOW_MISSING_DEPENDENCIES=true && 
export LC_ALL="C"
#choosecombo 1 aosp_arm64 eng
lunch arrow_m11q-userdebug
#lunch msm8953_64-userdebug
#make -j6 vendorimage
cd hardware && mma
#make systemimage
#m bacon
