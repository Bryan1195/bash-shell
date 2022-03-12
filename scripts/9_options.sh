#! /bin/bash
# Programa para ejemplificar como se realiza el paso de opciones con o sin parámetros.
# Autor: Franco twitter: @francomanca93

echo "Programa opciones"
echo "Opcion 1 enviada: $1" 
echo "Opcion 2 enviada: $2" 
echo "Opcioes enviadas: $*"
echo -e "\n"

echo "Recuperar valores"
while [ -n "$1" ]
    do
        case "$1" in 
            -a) echo "-a option utilizada";;
            -b) echo "-b option utilizada";;
            -c) echo "-c option utilizada";;
            *) echo "$! no es una option";;
        esac
        shift
    done
