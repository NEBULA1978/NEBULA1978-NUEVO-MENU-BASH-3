#!/bin/bash
#Ejemplo 11: uso de estructuras condicionales

echo -n "Adivina mi edad: "
read -r edad
if [ "$edad" = "18" ]; then
	echo ACERTASTE
else
	echo FALLASTE
fi
exit 0

# El comando read se utiliza para leer una línea de texto desde la entrada estándar y almacenarla en una variable. El modificador -r se utiliza para evitar que read interprete los caracteres de retroceso (backslashes) como caracteres de escape.

# Además del modificador -r, read tiene otras opciones que pueden ser útiles en diferentes situaciones, algunas de ellas son:

#     -n: especifica el número máximo de caracteres que read debe leer antes de detenerse, incluso si no se ha ingresado una línea completa. Por ejemplo, read -n 3 variable leerá solo los primeros 3 caracteres de la entrada del usuario y los almacenará en la variable "variable".

#     -s: hace que read no muestre la entrada del usuario en la pantalla mientras se está escribiendo. Esta opción es útil cuando se está leyendo contraseñas o información confidencial.

#     -a: permite que read almacene la entrada del usuario en un array en lugar de en una variable. Por ejemplo, read -a myarray leerá una línea de entrada del usuario y almacenará cada palabra separada por espacios en el array "myarray".

#     -t: especifica el tiempo límite que read esperará para que el usuario ingrese la entrada antes de salir. Por ejemplo, read -t 10 variable esperará 10 segundos para que el usuario ingrese una línea completa antes de continuar.

# Estas son solo algunas de las opciones que se pueden utilizar con el comando read. Para obtener más información, puede revisar la página del manual de Bash para read utilizando el comando man read.