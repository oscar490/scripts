#!/bin/bash

cd ~/web/$1

git init
hub create $2

git add .
git commit -m "Carga inicial"

git remote add origin https://github.com/oscar490/$2.git
git push -u origin master
