#! /bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando expresiones regulares.
# Autor: Franco twitter: @francomanca93

identificacionRegex='^[0-9]{10}$'
paisRegex='^ARG|ECU|COL|MEX|BRA|CHI$'
fechaNacimientoRegex='^19|20[0-8]{2}[1-12][1-31]$'

echo "Expresiones regulares"
read -p "Ingresar una identificación: " identificacion
read -p "Ingresar las iniciales de un pais [ARG, ECU, COL, MEX, BRA, CHI]: " pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]: " fechaNacimiento

#Validacion de la identificación
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificacion $identificacion valida"
else
    echo "Identificacion $identificacion invalida"
fi


#Validacion País
if [[ $pais =~ $paisRegex ]]; then
    echo "Pais $pais valido"
else
    echo "Pais $pais invalido"
fi


#Validacion Fecha de Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento valida"
else
    echo "Fecha Nacimiento $fechaNacimiento invalida"
fi

