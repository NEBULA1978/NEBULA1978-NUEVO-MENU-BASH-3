#!/bin/bash
#Ejemplo 16

for i in $(seq 1 10); do
	echo "$i"
done

# Este es otro ejemplo en Bash de un ciclo for. En este caso, se utiliza el comando seq para generar una secuencia de números del 1 al 10, y luego el ciclo for itera sobre cada uno de esos números e imprime su valor utilizando el comando echo.

# El comando seq se utiliza para generar secuencias de números. La sintaxis básica es seq [opciones] primer_numero último_numero [incremento]. En este caso, seq 1 10 genera una secuencia de números del 1 al 10 con un incremento de 1.

# El ciclo for utiliza el valor actual de la secuencia en cada iteración y lo almacena en la variable i. Luego, el comando echo imprime el valor de i en la salida estándar del terminal.

# La salida del script sería:

# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10

# Este ejemplo es útil para mostrar cómo se puede utilizar el comando seq para generar una secuencia de números y utilizar un ciclo for para iterar sobre cada uno de esos números. En la práctica, se podría utilizar seq para generar una secuencia de números para cualquier propósito, como iterar sobre una lista de archivos numerados en un directorio o realizar una acción un número determinado de veces.