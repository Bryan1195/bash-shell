#! /bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando echo, read y la variable $REPLY.
# Autor: Franco twitter: @francomanca93

option=0
backupName=""

echo "Programa Utilidades PostgreSQL"
echo -n "Ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción: $option, backupName: $backupName"

