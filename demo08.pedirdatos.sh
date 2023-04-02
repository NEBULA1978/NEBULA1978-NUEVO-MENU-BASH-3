#!/bin/bash 
#Ejemplo 8: Leer varias variables con read

echo Por favor, introduzca su nombre y apellidos 
read -r nombre apellidos
echo "¡Hola $apellidos, $nombre!"
exit 0
