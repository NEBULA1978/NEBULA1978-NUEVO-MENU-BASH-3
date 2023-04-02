#!/bin/bash
#Ejemplo 27: listas

# El mensaje de error que menciona shellcheck en el ejemplo 27 indica que es preferible utilizar mapfile o read -a en lugar de la expansión de comandos para asignar la salida de un comando a una lista en Bash.

# Aquí hay dos formas alternativas de asignar la salida de ls a una lista sin utilizar la expansión de comandos:

# lista=($(ls))
# echo "Número de elementos de la lista: ${#lista[*]}"
# echo "Toda la lista: ${lista[*]}"

# Utilizando mapfile
mapfile -t lista < <(ls)
echo "Número de elementos de la lista: ${#lista[*]}"
echo "Toda la lista: ${lista[*]}"

# Utilizando read -a
IFS=$'\n' read -ra lista < <(ls)
echo "Número de elementos de la lista: ${#lista[*]}"
echo "Toda la lista: ${lista[*]}"


# En ambos casos, se utiliza un proceso de subshell para ejecutar ls y se redirige la salida al comando mapfile o read -a. mapfile lee la entrada y la almacena en un array, mientras que read -a lee la entrada y la almacena en una matriz después de dividirla según el separador definido en la variable IFS (en este caso, se establece en \n para separar según las líneas).

# Es importante tener en cuenta que la expansión de comandos en Bash puede ser peligrosa si no se maneja adecuadamente, ya que puede introducir vulnerabilidades de seguridad en el script. Al utilizar mapfile o read -a, se pueden evitar estos problemas potenciales y asegurarse de que la asignación de la lista sea segura y confiable.