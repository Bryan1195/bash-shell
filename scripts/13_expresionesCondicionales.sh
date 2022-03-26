#!/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales.
# Autor: Franco Manca - @francomanca93

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "\nExpresiones Condicionales con numeros: "
if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niña."
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolescente."
else
    echo "La persona es mayor de edad."
fi

echo -e "\nExpresiones Condicionales con cadenas: "
if [ $pais = "EEUU" ]; then
    echo "La persona es del Norte de America"
elif [ $pais = "Argentina" ] || [ $pais = "Colombia" ]; then
    echo "La persona es del Sur de America."
else
    echo "Se desconoce la nacionalidad."
fi

echo -e "\nExpresiones Condicionales con archivos: "
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi

