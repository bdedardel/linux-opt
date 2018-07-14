#!/bin/bash
apt-get install git
mkdir github
cd github
git clone https://github.com/bdedardel/linux-opt
cp -r linux-opt/bin /opt
cd /
git init .
git config --global user.name "bdedardel"
git config --global user.email "bdedardel@github.com"
/opt/bin/apt-get-install.sh git
echo "run /opt/bin/apt-get-init-srv.sh" 
