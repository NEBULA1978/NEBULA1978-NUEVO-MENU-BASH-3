#!/bin/bash
#Ejemplo 14: ciclo for

for i in valor1 valor2 valor3 valor4; do
	echo item: $i
done

# Este es un ejemplo simple en Bash de un ciclo for. El ciclo for en Bash se utiliza para iterar sobre una lista de valores y realizar una acción para cada valor de la lista.

# En este ejemplo, se define una lista de cuatro valores separados por espacios: valor1, valor2, valor3 y valor4. Luego, el ciclo for recorre cada uno de estos valores y en cada iteración, imprime el valor utilizando el comando echo. La variable i se utiliza para almacenar el valor actual del ciclo.

# El comando echo imprime un mensaje en la salida estándar del terminal. En este caso, utiliza la sintaxis de expansión de variable de Bash para imprimir el valor actual del ciclo: item: $i.

# La salida del script sería:

# makefile

# item: valor1
# item: valor2
# item: valor3
# item: valor4

# Este ejemplo es útil para mostrar cómo se puede utilizar un ciclo for para iterar sobre una lista de valores y realizar una acción para cada valor. En la práctica, la lista de valores podría ser una lista de archivos en un directorio, una lista de nombres de usuario en un sistema, o cualquier otra lista que se desee procesar con un ciclo for.