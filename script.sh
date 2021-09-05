#!/bin/sh

git config --global user.email "tukaiari@gmail.com"
git config --global user.name "Arijit Roy"
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
mkdir ~/an
cd ~/an
repo init -u https://github.com/ArrowOS/android_manifest.git -b arrow-11.0 && repo sync
