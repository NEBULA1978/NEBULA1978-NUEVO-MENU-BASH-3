#!/bin/bash




# OTRO EJEMPLO

echo "Introduzca un número"
read -r numero

if [ "$numero" -gt 10 ]; then
    echo "El número introducido es mayor que 10"
else
    echo "El número introducido es menor o igual que 10"
fi

# En este script, se solicita al usuario que introduzca un número mediante el comando read. Luego, se utiliza una estructura if para comprobar si el número introducido es mayor que 10 o no.

# Si el número es mayor que 10, se imprime un mensaje en la consola indicando que el número es mayor que 10. En caso contrario, se imprime un mensaje indicando que el número es menor o igual que 10.

# Es importante destacar que en Bash, la sintaxis de la estructura if es sensible a espacios y corchetes. Por lo tanto, es importante prestar atención a la sintaxis para evitar errores de sintaxis en el script.
