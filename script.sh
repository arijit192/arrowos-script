#!/bin/sh

git config --global user.email "tukaiari@gmail.com"
git config --global user.name "Arijit Roy"
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
mkdir ~/an
cd ~/an
repo init --depth=1 -u https://android.googlesource.com/platform/manifest -b android11-gsi
#repo init --depth=1 -u https://github.com/ArrowOS/android_manifest.git -b arrow-11.0
repo sync
source build/envsetup.sh
#export ALLOW_MISSING_DEPENDENCIES=true && export LC_ALL="C"
lunch aosp_arm64-userdebug
#lunch arrow_aosp_arm64-userdebug
make
#m bacon
