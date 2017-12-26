#!/bin/bash


read -p "Nombre de Dominio (Entre comillas): " dominio

if [ -z $dominio ]
then
    echo "Se establece dominio.local"
    dominio=dominio.local
fi

echo "127.0.0.1	$dominio" >> /etc/hosts

echo Nombre de Dominio agregado con éxito.
