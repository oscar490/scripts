#!/bin/bash

var=$(ls ~/web | grep "^$1$" | wc -l)

if [ $var -gt 0 ]
then
    echo Ya existe una estructura de proyecto con ese nombre
    exit 1
fi

mkdir -p ~/web/$1
cd ~/web/$1

mkdir db
touch index.php
echo "<!DOCTYPE html>" >> index.php
echo "	<html>" >> index.php
echo "		<head>" >> index.php
echo "			<meta charset='utf-8' />" >> index.php
echo "		</head>" >> index.php
echo "		<body>" >> index.php
echo "		<?php" >> index.php
echo " " >> index.php
echo "		?>" >> index.php
echo "			<h1>Comienzo de proyecto</h1>" >> index.php
echo "		</body>" >> index.php
echo "	</html>" >> index.php


