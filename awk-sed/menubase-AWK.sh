#!/bin/bash

# Definimos un array con las opciones del menú. Cada opción es una cadena con dos partes separadas por el carácter '|': el nombre de la opción y el comando correspondiente.
opciones=(
    "Mostrar directorio:|ls"
    "Mostrar calendario:|cal"
    "Mostrar datos:|date"
    "Mostrar las primeras 3 líneas de prueba1.txt y prueba2.txt en out.txt:|head -3 prueba1.txt >> out.txt; head -3 prueba2.txt >> out.txt"
    "Ver el archivo out.txt:|cat out.txt"
    "Cambiar una palabra por otra con awk:|echo 'Hola jorge' | awk '{\$2=\"carlos\"; print \$0}'"
    "Cambiar el campo nº1, etc por la palabra hola, etc con awk:|awk -F';' '{\$1=\"hola\"; print \$1 \$2}' out.txt"
    "Crear archivo en carpeta actual:|echo -n 'Escribe un nombre de archivo con su extension: '; read limite; touch \$limite"
    "Eliminar un archivo en carpeta actual:|echo -n 'Escribe el nombre de un archivo: '; read archivo; rm -i \$archivo"
    "Listar archivos del directorio raiz /:|ls -l /"
    "Listar la 1º columna de los archivos del directorio raiz /:|ls -l / | awk '{print \$1}'"
    "Ver el archivo passwd:|cat /etc/passwd"
    "Ver el archivo passwd la 1º columna:|cat /etc/passwd | awk -F':' '{print \$1}'"
    "Ver el archivo passwd la 1º columna y la 5º columna es espacio ocupa:|cat /etc/passwd | awk -F':' '{print \$1, \$5}'"
    "Ver el archivo passwd la 3º columna y la 4º columna:|cat /etc/passwd | awk -F':' '{print \$3, \$4}'"
    "Ver el archivo passwd la 1º columna(nombre) la 3º columna(usr) y la 4º columna(userid):|cat /etc/passwd | awk -F':' '{print \$1, \$3, \$4}'"
    "Mostrar los tamaños de los archivos de la carpeta raiz en bytes:|ls -l / | awk '{print \$5}'"
    "Mostrar los tamaños de los archivos de la carpeta raiz en kilobytes:|ls -l / | awk '{print \"Ocupa: \"\$5/1024\" kilobytes\"}'"
    "Entrada de un número con awk:|echo 3456 | awk '{ print (\$1/1024)\" kilobytes\" }'"
    "Sumar dos números con echo y awk sumamos 2+3:|echo 2 3 | awk '{print \$1 + \$2}'"
    "Mostrar dos números con echo y awk separados 2 3:|echo 2 3 | awk '{print \$1, \$2}'"
    "Mostrar la última palabra de una frase con echo y awk:|echo 'hola mundo, que tal' | awk '{print \$NF}'"
    "Mostrar todas las palabras de una frase con echo y awk:|echo 'hola mundo, que tal' | awk'{for(i=1;i<=NF;i++) print $i}'"
    "Mostrar la longitud de la primera palabra de una frase con echo y awk:|echo 'hola mundo, que tal' | awk '{print length(\$1)}'"
    "Mostrar la longitud de cada palabra de una frase con echo y awk:|echo 'hola mundo, que tal' | awk '{for(i=1;i<=NF;i++) print length(\$i)}'"
    "Contar el número de palabras en una frase con echo y awk:|echo 'hola mundo, que tal' | awk '{print NF}'"
    "Salir:|exit 0"

    "Salir:|exit 0"
)
while true; do
    clear
    echo "Ingrese el número de la opción deseada:"
    for i in "${!opciones[@]}"; do
        echo "$i. ${opciones[$i]%%|*}" # Imprimimos el índice de la opción y su nombre (sin el comando correspondiente).
    done
    read opcion
    case "$opcion" in
    [0-27])
        if [ "$opcion" -ge 0 ] && [ "$opcion" -lt "${#opciones[@]}" ]; then
            clear
            comando="${opciones[$opcion]#*|}" # Obtenemos el comando correspondiente a la opción seleccionada.
            eval "$comando"                   # Ejecutamos el comando.
            echo ""
            echo "Presione Enter para continuar..."
            read
        else
            echo "Opción inválida. Presione Enter para continuar..."
            read
        fi
        ;;
    *)
        echo "Opción inválida. Presione Enter para continuar..."
        read
        ;;
    esac
done
