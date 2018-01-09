#!/bin/bash


if [[ $# -gt 1 || $# -eq 0 ]]
then
    echo Sólo se permite un parámetro.
    exit 1
fi

var=$(cat /etc/hosts | grep $1 | wc -l)

nombre=$(echo $1 | grep "^[a-z0-9A-Z]*$"  | wc -l)

if [ $nombre -eq 0 ]
then
    echo El nombre de dominio sólo puede contener letras o números.
    exit 1
fi

if [ $var -gt 0 ]
then
    echo Ya existe ese nombre de dominio.
    exit 1
fi
    

echo "127.0.0.1	$1.local" >> /etc/hosts
exit 0
