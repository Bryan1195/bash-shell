#!/bin/bash
# Programa para ejemplificar el uso de break y continue .
# Autor: Franco Manca - @francomanca93


echo "Sentencias break y continue"
for file in $(ls)
do
    for nombre in {1..4}
    do
        if [ $file = "10_download.sh" ]; then
            break;
        elif [[ $file == 4* ]]; then
            continue
        else
            echo "Nombre del archivo: $file _ $nombre"
        fi
    done
done
