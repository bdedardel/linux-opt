#!/bin/bash
echo "npm install -g $@"
npm install -g "$@"
touch /opt/bin/npm.txt
echo "npm install -g $@" >> /opt/bin/npm.txt

cd /
echo "git add --all usr/" 
git add --all usr/
echo "git commit"
git commit -m "npm install -g '$@'"
cd - 

