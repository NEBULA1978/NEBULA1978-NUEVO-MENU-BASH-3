#!/bin/bash


echo -n "Escribe un número: "
read valor
# Si es igual a 0
if [ $valor -eq 0 ]; then
    echo "El número es cero"
# Si el numero es mayor a 0
elif [ $valor -gt 0 ]; then
    echo "El número es positivo"
else
    echo "El número es negativo"
fi

#Operadores relacionales
#-eq: igual a
#-ne: no es igual a
#-gt: Mayor a
#-ge: Mayor o igual a
#-lt: Menor a
#-le: Menor o igual a

echo -n "Escribe una palabra: "
read palabra
# Si palabra es igual a 5
if [ ${#palabra} -eq 5 ]; then
    echo "La palabra tiene 5 caracteres"
# Si palabra es mayor a 5
elif [ ${#palabra} -gt 5 ]; then
    echo "La palabra tiene más de 5 caracteres"
else
    echo "La palabra tiene menos de 5 caracteres"
fi

#Operadores relacionales
#-eq: igual a
#-ne: no es igual a
#-gt: Mayor a
#-ge: Mayor o igual a
#-lt: Menor a
#-le: Menor o igual a
# ${#variable}: devuelve la longitud de la variable

echo -n "Ingresa un número del 1 al 10: "
read num
# Si numero es menor a o mayor a 10
if [[ $num -lt 1 || $num -gt 10 ]]; then
    echo "El número está fuera del rango [1, 10]"
else
    echo "El número está dentro del rango [1, 10]"
fi

#Operadores relacionales
#-eq: igual a
#-ne: no es igual a
#-gt: Mayor a
#-ge: Mayor o igual a
#-lt: Menor a
#-le: Menor o igual a
# ||: or lógico

echo -n "Ingresa un número entero: "
read num

if (( num % 2 == 0 )); then
    echo "El número es par"
else
    echo "El número es impar"
fi

#Operadores aritméticos
# %: módulo (devuelve el resto de la división)
# (( )): se utiliza para evaluar expresiones aritméticas

