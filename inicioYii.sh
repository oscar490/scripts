
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
echo Creando proyecto sobre Framework Yii2 ..
echo
./scripts/addProyectoYiiBasico.sh $1
