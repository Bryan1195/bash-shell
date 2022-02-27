#!/bin/bash
# Programa para revisar la declaración de variables

OPCION=0
NOMBRE=Franco

echo "Opcion: $OPCION y Nombre: $NOMBRE"


# Exportar la variable nombre para que este disponible a los demas procesos.
export NOMBRE

# Llamar al siguiente script para recuperar la variable.
./2_variables_2.sh
