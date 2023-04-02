#!/bin/bash
#Ejemplo 21. Funciones (se escriben antes que el principal)

function salir { 
	exit 0
} 

function hola { 
	echo "¡Hola! "
} 

#principal
hola 
echo "Ejecución del script finalizada"
salir 

# En Bash, las funciones pueden devolver un valor utilizando el comando return. El valor devuelto puede ser un número entero, que se puede utilizar como código de salida del script o como valor de retorno de la función.

# Para utilizar return en una función, se utiliza el siguiente formato:

# bash

# function nombre_de_la_funcion {
# 	# Código de la función...
	
# 	# Devolver un valor
# 	return valor
# }

# En el lugar de valor, se puede colocar cualquier número entero. Si no se especifica un valor, la función devuelve 0.

# Por ejemplo, se puede definir una función que tome dos argumentos y devuelva su suma:

# bash

# function suma {
# 	local a=$1
# 	local b=$2
# 	local resultado=$((a + b))
	
# 	return $resultado
# }

# Esta función toma dos argumentos, a y b, y devuelve la suma de ambos como valor de retorno. Se utiliza la palabra clave local para definir variables locales dentro de la función. Luego, se calcula el resultado y se utiliza return para devolverlo.

# Para utilizar el valor de retorno de una función, se puede almacenar en una variable. Por ejemplo:

# bash

# suma 2 3
# resultado=$?
# echo "La suma es: $resultado"

# En este ejemplo, se llama a la función suma con los argumentos 2 y 3. Luego, se almacena el valor de retorno en la variable resultado utilizando el comando $?. Finalmente, se imprime el valor de resultado.

# También se puede utilizar el valor de retorno como código de salida del script. Por ejemplo:

# bash

# suma 2 3
# exit_status=$?
# exit $exit_status

# En este ejemplo, se llama a la función suma con los argumentos 2 y 3. Luego, se almacena el valor de retorno en la variable exit_status utilizando el comando $?. Finalmente, se utiliza exit para salir del script con el código de salida almacenado en exit_status.

# En resumen, return se utiliza en Bash para devolver un valor desde una función. El valor devuelto se puede utilizar como código de salida del script o como valor de retorno de la función. Se utiliza el comando $? para almacenar el valor de retorno de una función en una variable.