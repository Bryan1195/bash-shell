#! /bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando read.
# Autor: Franco twitter: @francomanca93

option=0
backupName=""

echo "Programa Utilidades PostgreSQL"
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opción: $option, backupName: $backupName"

