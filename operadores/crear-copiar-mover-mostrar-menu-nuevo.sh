#!/bin/bash

# Definimos un array con las opciones del menú. Cada opción es una cadena con dos partes separadas por el carácter '|': el nombre de la opción y el comando correspondiente.
opciones=(
    "Mostrar directorio:|ls"

    "Instalar programa:|./segundo_script.sh 2"

    "Entrar en carpeta:|./segundo_script.sh 3"

    "Mover archivo o carpeta:|./segundo_script.sh 4"

    "Eliminar archivo o carpeta:|./segundo_script.sh 5"

    "Mostrar contenido de archivo o carpeta:|./segundo_script.sh 6"

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
        [0-9])
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

# Este código es una combinación de los dos scripts que me has proporcionado anteriormente. El objetivo de este script es proporcionar un menú con varias opciones para que el usuario pueda seleccionar diferentes acciones.

# El script comienza definiendo un array llamado "opciones" que contiene cada opción del menú junto con su correspondiente comando que se ejecutará al seleccionar dicha opción. Las opciones del menú son:

#     Mostrar directorio: Ejecuta el comando "ls" para mostrar el contenido del directorio actual.
#     Instalar programa: Ejecuta el segundo script con el comando "./segundo_script.sh 2" para instalar un programa.
#     Entrar en carpeta: Ejecuta el segundo script con el comando "./segundo_script.sh 3" para entrar en una carpeta especificada por el usuario.
#     Mover archivo o carpeta: Ejecuta el segundo script con el comando "./segundo_script.sh 4" para mover un archivo o carpeta especificado por el usuario a otra carpeta.
#     Eliminar archivo o carpeta: Ejecuta el segundo script con el comando "./segundo_script.sh 5" para eliminar un archivo o carpeta especificado por el usuario.
#     Mostrar contenido de archivo o carpeta: Ejecuta el segundo script con el comando "./segundo_script.sh 6" para mostrar el contenido de un archivo o carpeta especificado por el usuario.
#     Salir: Termina la ejecución del script.

# Luego, el script muestra el menú de opciones al usuario y lee la selección del usuario. Utiliza un bucle "while" y una estructura "case" para procesar la selección del usuario. Si el usuario selecciona una opción válida, el script ejecuta el comando correspondiente a esa opción. Si el usuario selecciona una opción inválida, el script muestra un mensaje de error.

# El script se repite continuamente, mostrando el menú al usuario y leyendo la selección del usuario hasta que el usuario seleccione la opción "Salir".

# En resumen, este script proporciona un menú de opciones que permite al usuario realizar varias acciones como mostrar el contenido del directorio actual, instalar un programa, entrar en una carpeta, mover o eliminar archivos o carpetas y mostrar el contenido de un archivo o carpeta.
