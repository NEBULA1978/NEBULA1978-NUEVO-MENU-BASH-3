#!/bin/bash
#Ejemplo 5: asignación de variables

echo -n "Asigno a una variable la cadena 'demo*' y muestro la variable"
read -r
nombre="demo*"
echo "$nombre"
echo -n "Ahora muestro la misma variable encerrada entre comillas dobles"
read -r
echo "$nombre"
echo -n "Ahora muestro la misma variable encerrada entre comillas simples"
read -r
echo "$nombre"
exit 0
