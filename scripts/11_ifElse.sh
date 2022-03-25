#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else.
# Autor: Franco Manca - @francomanca93

notaClase=0
edad=0

echo "Ejemplo sentencia If -else"
read -n1 -p "Indique cúal es su nota (1-9):" notaClase
echo -e "\n"

if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cúal es su edad:" edad
if [ $edad -le 18 ]; then
    echo "La persona no puede no puede votar"
else
    echo "La persona puede puede votar"
fi





