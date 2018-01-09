#!/bin/bash

ruta=/etc/apache2/sites-available
cd $ruta
echo "<VirtualHost *:80>" >> $1.conf
echo "	ServerName $1.local" >> $1.conf
echo "	DocumentRoot $2" >> $1.conf
echo "</VirtualHost>" >> $1.conf

echo Activando sitio virtual ...
sudo a2ensite $1.conf > /dev/null
echo

echo Reiniciando apache ...
sudo service apache2 restart > /dev/null
echo

if [ $? -eq 0 ]
then
    exit 0

else
    exit 1
fi


