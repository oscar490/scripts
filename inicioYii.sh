
mostrar() {

    if [ $? -eq 0 ]
    then
        echo $1
        echo

    else
        echo "No" $1
        exit
    fi
}

sudo ./scripts/addDominio.sh $1
mostrar "se ha añadido el nombre de host correctamente"

sudo ./scripts/addVirtualHost.sh $1 "/var/www/web/$1/web"
mostrar "se ha añadido el sitio vitual correctamente"

./scripts/addProyectoYiiBasico.sh $1
#mostrar "se ha añadido la estructura de carpetas"  ~/web/$1
