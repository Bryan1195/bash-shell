#!/bin/bash
# Programa para ejemplificar el uso de los if anidados.
# Autor: Franco Manca - @francomanca93

notaClase=0
continua=""

echo "Ejemplo sentencia If -else"
read -n1 -p "Indique cúal es su nota (1-9):" notaClase
echo -e "\n"

if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Si va continuar estudiando en el siguiente nivel (s/n)" continua
    if [ $continua = "s" ]; then
        echo "Bienvenido al siguiente nivel"
    elif [ $continua = "n" ]; then
        echo "Gracias por trabajar con nosotros, mucha suerte !!!"
    else
        echo "La opcion ingresa no ha sido ni un si ni un no. Daremos como negativa la respuesta. Gracias por trabajar con nosotros, muchas suerte!!!"
    fi
else
    echo "El alumno reprueba la materia"
fi







