#!/bin/bash
#Ejemplo : uso de la construcción case

while true ; do
	echo "1. Opción 1"
	echo "2. Opción 2"
	echo "3. Opción 3"
	echo "Q. Terminar"
	read -r opcion

	case "$opcion" in
		1)	echo "Opción 1"
			;;
		2)	echo "Opción 2"
			;;
		3)	echo "Opción 3"
			;;
		q|Q)	break
			;;
		*)	echo "Opción incorrecta"
			;;
	esac
done
exit 0

# Este es un ejemplo en Bash de la construcción case. La construcción case se utiliza para realizar diferentes acciones según el valor de una variable.

# En este ejemplo, se utiliza un ciclo while para mostrar un menú de opciones y leer la entrada del usuario. Luego, se utiliza la construcción case para realizar diferentes acciones según la opción seleccionada por el usuario.

# Dentro del cuerpo del ciclo while, se utiliza la construcción echo para mostrar las opciones disponibles en el menú. Luego, se utiliza el comando read para leer la entrada del usuario y almacenarla en la variable opcion.

# Luego, se utiliza la construcción case para realizar diferentes acciones según el valor de opcion. Si opcion es igual a 1, se imprime "Opción 1". Si opcion es igual a 2, se imprime "Opción 2". Si opcion es igual a 3, se imprime "Opción 3". Si opcion es igual a "q" o "Q", se utiliza el comando break para salir del ciclo while. Si opcion no coincide con ninguno de los valores anteriores, se imprime "Opción incorrecta".

# El mensaje de advertencia generado por Shellcheck es correcto: se recomienda utilizar el comando true en lugar de la expresión [ true ] en la condición del ciclo while.