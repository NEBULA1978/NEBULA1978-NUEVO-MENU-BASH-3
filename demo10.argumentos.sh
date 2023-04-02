#!/bin/bash
#Ejemplo 10: Paso de argumentos. Orden shift

n=1
echo "Nombre del script: $0"
while [ $# -gt 0 ]; do		#ojo! dejar espacios
	echo "Valor argumento $n: $1"
	# let "n=n+1"
	((n++))
	shift
done
exit 0


# Este es un ejemplo en Bash que utiliza el bucle while y el comando shift para recorrer los argumentos pasados al script en la línea de comandos.

# El script comienza definiendo una variable n para llevar la cuenta del número de argumentos, y luego imprime el nombre del script utilizando la variable especial $0.

# El bucle while se ejecuta mientras el número de argumentos en $# es mayor que 0. En cada iteración, el script imprime el valor del primer argumento $1 y actualiza la variable n. Luego, el comando shift mueve todos los argumentos a la izquierda, descartando $1 y haciendo que $2 se convierta en $1, $3 se convierta en $2, y así sucesivamente.

# Cuando se han procesado todos los argumentos, el bucle termina y el script sale con un código de estado de 0 utilizando el comando exit.

# El único problema que detecta Shellcheck en este script es que utiliza el comando let para actualizar la variable n, pero este comando es obsoleto y se recomienda utilizar la sintaxis (( expr )) en su lugar. Por lo tanto, se podría reemplazar la línea let "n=n+1" por ((n++)).