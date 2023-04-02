#!/bin/bash
#Ejemplo 23: funciones con parámetros

function salir {
	exit 0
}

# function escribe {
# 	echo "$1"
# }
# Salida por consola
# Hola
# Mundo

function escribe {
	echo "$1 $2"
}

escribe Hola
escribe Mundo
salir

# SALIDA POR CONSOLA
#  Hola Mundo

# echo "esta línea no se ejecuta"


# Este script es un ejemplo de cómo definir y utilizar funciones con parámetros en Bash.

# En el script se definen dos funciones: salir y escribe. La función salir utiliza el comando exit para salir del script con un código de salida de 0. La función escribe utiliza el comando echo para imprimir el primer argumento que se le pasa.

# Luego, se llama a la función escribe dos veces: la primera vez con el argumento "Hola" y la segunda vez con el argumento "Mundo". Cada vez que se llama a la función, se imprime el argumento correspondiente en la consola.

# Después de llamar a la función escribe por segunda vez, se llama a la función salir, lo que sale del script con un código de salida de 0. Debido a que el script sale en este punto, la última línea no se ejecuta.

# En resumen, en este ejemplo se demuestra cómo se pueden definir y utilizar funciones con parámetros en Bash. Los parámetros se pasan a la función como argumentos separados por espacios cuando se llama a la función.