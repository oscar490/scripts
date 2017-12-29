
sudo ./addDominio.sh $1

if [ $? -eq 0 ]
then
    echo Se ha añadido el nombre de host correctamente.

else
    echo No se ha añadido el nombre del host correctamente
    exit
fi
sudo ./addVirtualHost.sh $1
