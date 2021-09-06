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
repo sync
source build/envsetup.sh
#export ALLOW_MISSING_DEPENDENCIES=true && export LC_ALL="C"
#choosecombo 1 aosp_arm64 eng
lunch arrow_lavender-userdebug
#make
m bacon
