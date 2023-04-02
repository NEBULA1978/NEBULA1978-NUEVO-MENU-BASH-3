#!/bin/bash
#Ejemplo 12: estructuras condicionales

echo -n "Introduce un número: "
read -r numero
if [ "$numero" -lt 0 ]; then
	echo Has introducido un número negativo
elif [ "$numero" -gt 0 ]; then
	echo Has introducido un número positivo
else
	echo "Has introducido 0 (o nada)"
fi
exit 0
