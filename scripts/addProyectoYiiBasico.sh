#!/bin/bash

echo Descargando paquetes de Yii2 ...

composer create-project yiisoft/yii2-app-basic ~/web/$1 > /dev/null
