#!/bin/bash
#Ejemplo 22: funciones con variables locales

function hola {
	local HOLA=Mundo
	echo $HOLA
}

echo "$HOLA"
hola
echo "$HOLA"
exit 0

# Este script es un ejemplo de cómo definir y utilizar funciones con variables locales en Bash.

# En el script se define una función llamada hola. Dentro de la función, se define una variable local llamada HOLA con el valor "Mundo". Luego, se utiliza el comando echo para imprimir el valor de HOLA.

# Fuera de la función, se utiliza el comando echo para imprimir el valor de la variable HOLA. Como HOLA no se define fuera de la función, este comando imprimirá una cadena vacía.

# Luego, se llama a la función hola, lo que imprime "Mundo" en la consola.

# Finalmente, se utiliza el comando echo para imprimir el valor de HOLA nuevamente. Como HOLA sigue sin estar definido fuera de la función, este comando imprimirá una cadena vacía.

# En resumen, en este ejemplo se demuestra cómo se pueden definir variables locales dentro de una función en Bash. Estas variables locales no son accesibles fuera de la función, por lo que no afectan el valor de las variables definidas fuera de la función.