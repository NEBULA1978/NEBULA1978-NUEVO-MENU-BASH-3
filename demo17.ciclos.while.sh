#!/bin/bash
#Ejemplo 17: uso de while

# Este es un ejemplo en Bash de un ciclo while. En este caso, se utiliza el ciclo while para contar hasta 10 e imprimir el valor del contador en cada iteración.

# El ciclo while se utiliza para repetir una acción mientras se cumpla una condición. En este caso, la condición es que n sea menor que 10. El ciclo while comienza con n igual a 0, y en cada iteración, se imprime el valor actual de n utilizando el comando echo. Luego, se utiliza el comando let para incrementar n en 1.

# El comando let se utiliza para realizar operaciones aritméticas en Bash. En este caso, let n=n+1 incrementa n en 1.

# El mensaje de advertencia generado por Shellcheck es correcto: se recomienda utilizar la sintaxis (( expr )) en lugar de let para realizar operaciones aritméticas. Por lo tanto, se podría reemplazar la línea let n=n+1 por ((n++)).

# n=0
# while [ $n -lt 10 ]; do
# 	echo el contador es $n
# 	let n=n+1
# done

# La corrección sugerida por Shellcheck quedaría así:

n=0
while [ $n -lt 10 ]; do
	echo "el contador es $n"
	((n++))
done

# Esta versión del script utiliza la sintaxis ((...)) para incrementar n en 1 en lugar de let.

# SALIDA POR CONSOLA

# el contador es 0
# el contador es 1
# el contador es 2
# el contador es 3
# el contador es 4
# el contador es 5
# el contador es 6
# el contador es 7
# el contador es 8
# el contador es 9

# El script comienza con n igual a 0, y luego utiliza el ciclo while para imprimir el valor de n en cada iteración hasta que n sea igual a 10.

# En la primera iteración, n es igual a 0 y se imprime "el contador es 0". En la segunda iteración, n es igual a 1 y se imprime "el contador es 1", y así sucesivamente hasta que n llega a 9 en la novena iteración. En la décima y última iteración, n es igual a 10 y la condición del ciclo while ya no se cumple, por lo que el ciclo termina y el script sale.