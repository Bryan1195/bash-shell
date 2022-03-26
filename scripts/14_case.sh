#!/bin/bash
# Programa para ejemplificar el uso de la sentencia case.
# Autor: Franco Manca - @francomanca93

opcion=""

echo "Ejemplo sentencia Case"
read -n1 -p "Ingrese una opcion de la A - Z : " opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperacion Guardar Archivo";;
    "B") echo "Operación Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operación";;
    "+") "Opción incorrecta"
esac
