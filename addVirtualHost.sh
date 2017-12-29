#!/bin/bash

ruta=/etc/apache2/sites-available
cd $ruta
echo "<VirtualHost *:80>" >> $1.conf
echo "	ServerName $1" >> $1.conf
echo "	DocumentRoot /var/www/web/$1" >> $1.conf
echo "</VirtualHost>" >> $1.conf
