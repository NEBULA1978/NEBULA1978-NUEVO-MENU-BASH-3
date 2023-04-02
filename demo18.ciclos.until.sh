#!/bin/bash
#Ejemplo 18: uso de until

n=0
until [ $n -ge 10 ]; do
	echo el contador es $n
	let n=n+1
done

# Este es un ejemplo en Bash de un ciclo until. En este caso, se utiliza el ciclo until para contar hasta 10 e imprimir el valor del contador en cada iteración.

# El ciclo until se utiliza para repetir una acción hasta que se cumpla una condición. En este caso, la condición es que n sea mayor o igual a 10. El ciclo until comienza con n igual a 0, y en cada iteración, se imprime el valor actual de n utilizando el comando echo. Luego, se utiliza el comando let para incrementar n en 1.

# El comando let se utiliza para realizar operaciones aritméticas en Bash. En este caso, let n=n+1 incrementa n en 1.

# En este ejemplo, el resultado final es el mismo que en el ejemplo anterior que utilizaba un ciclo while, ya que ambos ciclos imprimen el valor del contador hasta que n sea igual a 10. La única diferencia es que en el ciclo while, la condición se verifica al principio de cada iteración, mientras que en el ciclo until, la condición se verifica al final de cada iteración.

# La salida por consola del script sería:

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

# El script comienza con n igual a 0, y luego utiliza el ciclo until para imprimir el valor de n en cada iteración hasta que n sea igual a 10.

# En la primera iteración, n es igual a 0 y se imprime "el contador es 0". En la segunda iteración, n es igual a 1 y se imprime "el contador es 1", y así sucesivamente hasta que n llega a 9 en la novena iteración. En la décima y última iteración, n es igual a 10 y la condición del ciclo until se cumple, por lo que el ciclo termina y el script sale.