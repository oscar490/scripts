#!/bin/bash


read -p "Nombre de Dominio: (Entre comillas): " dominio


echo "127.0.0.1	$dominio" >> /etc/hosts

echo Nombre de Dominio agregado con éxito.
