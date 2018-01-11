#!/bin/bash

mkdir ~/web/$1

echo Descargando paquetes de Yii2 ...

composer create-project yiisoft/yii2-app-basic ~/web/$1 > /dev/null

if [ $? -eq 0 ]
then
    echo
    echo "Se ha creado las carpetas del proyecto."

else
    echo
    echo "No se ha podido crear las carpetas del proyecto."
    exit 1
fi

echo
echo Inizializando Servidor web de yii ...
cd ~/web/$1
./yii serve
