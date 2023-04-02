#!/bin/bash 
#Ejemplo 7: Entrada de datos

# echo Por favor, introduzca su nombre 
# read nombre 
# echo "¡Hola $nombre!"
# exit 0

#Ejemplo 6: uso de salidas de comandos en una expresión

echo Por favor, introduzca la ruta 
read -r ruta 
echo "Ruta actual:  $($ruta)"

exit 0
