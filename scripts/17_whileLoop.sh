#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion while loop.
# Autor: Franco Manca - @francomanca93

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
done

