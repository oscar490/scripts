# !/bin/bash

sudo -u postgres createuser -P $1 >> /dev/null

if [ $? -eq 0 ]
then
    echo Se ha creado el usuario $1 para la base de datos.

else
    echo Ya existe el usuario $1 para la base de datos.
fi


sudo -u postgres createdb $1 >> /dev/null

if [ $? -eq 0 ]
then
    echo Se ha creado la base de datos $1.

else
    echo Ya existe la base de datos $1.
fi

cd ~/web/$1/db

touch $1.sql
echo "psql -U $1 -h localhost $1 < $1.sql" > load.sh
sudo chmod a+x load.sh

echo psql -U $1 -h localhost $1 > inicio.sh
sudo chmod a+x inicio.sh

