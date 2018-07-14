#!/bin/bash
echo "apt-get install $@"
/usr/bin/apt-get install "$@"
touch /opt/bin/apt-get.txt
echo "apt-get install $@" >> /opt/bin/apt-get.txt
echo "git add --all etc"
cd /
git add --all etc
echo "git add --all bin"
git add --all bin
echo "git add --all lib"
git add --all lib
echo "git add --all usr"
git add --all usr
echo "git add --all sbin"
git add --all sbin
# echo "git add --all opt" 
# git add --all opt
echo "git commit"
git commit -m "apt-get install '$@'"
cd - 

