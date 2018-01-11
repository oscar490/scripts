#!/bin/bash
if [[ $# -gt 1 || $# -eq 0 ]]
then
    echo Sólo se permite 1 parámetro.
    exit 1
fi

var=$(ls -a ~/web/$1 | grep ".git" | wc -l)

if [ $var -eq 1 ]
then
    echo Ya está en seguimiento por GIT.
    exit 1
fi

mensaje () {
    if [ $? -eq 0 ]
    then
        echo "Si "$1
        echo

    else
        echo "No "$1
        echo
        exit 1
    fi

}

cd ~/web/$1

git init > /dev/null
echo Inicializando GIT ...
echo

hub create $1 < /dev/null
echo Creando repositorio remoto y vinculándolo con el local ...
echo
mensaje "se ha creado el repositorio remoto." $?

git add .
git commit -m "Carga inicial"
mensaje "se ha realizado el primer commit." $?

git push -u origin master
mensaje "se están siguiendo la rama master con la rama remota master." $? 

