#!/bin/bash
echo "apt-get dist-upgrade"
apt-get update
/usr/bin/apt-get upgrade
/usr/bin/apt-get dist-upgrade
echo "git add etc"
cd /
git add --all etc
echo "git add bin"
git add --all bin
echo "git add lib"
git add --all lib
echo "git add usr"
git add --all usr
echo "git add sbin"
git add --all sbin
# echo "git add opt" 
# git add opt
echo "git commit"
git commit -m "apt-get dist-upgrade"
cd - 

# todo
# warning: Vous avez lancé 'git add' sans '-A (--all)' ni '--ignore-removal',
# dont le comportement va changer dans Git 2.0 avec le respect des chemins que vous supprimez

# update
# - Remove unnecessary packages : sudo apt-get autoremove --purge
# - Fully upgrade your current system
# apt-get update
# apt-get upgrade
# apt-get dist-upgrade
# - Make a data backup
