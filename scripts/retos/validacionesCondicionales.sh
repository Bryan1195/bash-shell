#!/bin/bash
# Autor: Franco Manca - @francomanca93

valor=0

echo ""
read -p "Indique cúal es su valor:" valor
if [ $valor -eq 1 ]; then
    echo "Has ingresado el 1"
elif [ $valor -eq 2 ]; then
    echo "Has ingresado el 2"
elif [ $valor -eq 3 ]; then
    echo "Has ingresado el 3"
elif [ $valor -eq 4 ]; then
    echo "Has ingresado el 4"
elif [ $valor -eq 5 ]; then
    echo "Has ingresado el 5"
else
    echo "Valor ingresado incorrecto"
fi

