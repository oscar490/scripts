
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

sudo ./addDominio.sh $1
mostrar "se ha añadido el nombre de host correctamente"

sudo ./addVirtualHost.sh $1
mostrar "se ha añadido el sitio vitual correctamente"
