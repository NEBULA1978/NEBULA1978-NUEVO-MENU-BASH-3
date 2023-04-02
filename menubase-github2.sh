#!/bin/bash

# Definimos un array con las opciones del menú. Cada opción es una cadena con dos partes separadas por el carácter '|': el nombre de la opción y el comando correspondiente.
opciones=(
    "Mostrar directorio:|ls"
        "Clonar Repositorio de GitHub:|echo -n 'Introduce la dirección del repositorio a clonar: '; read direccion; git clone \"$direccion\""
    "Cambiar a Rama Principal (main):|git checkout main"
    "Asegurarse de tener la Última Versión del Código:|git pull origin main"
    "Crear una Nueva Rama:|git branch"
    "Realizar Cambios en un Archivo:|nano"
    "Agregar Nuevos Cambios al Repositorio:|git add -A; echo -n 'Introduce un mensaje para el commit: '; read mensaje; git commit -m \"$mensaje\""
    "Subir Cambios de la Nueva Rama al Proyecto de GitHub:|git push origin"
    "Ver Ramas Unidas:|git branch --merged"
    "Unir la Nueva Rama con la Rama Principal (main):|git checkout main; git merge"
    "Subir las Dos Ramas a GitHub:|git push origin main"
    "Borrar Rama de Repositorio Externo de GitHub:|git push origin --delete"
    "Ver Ramas:|git branch -a"
    "Borrar Rama de Copia Local:|git branch -d"
    "Borrar Archivo del Repositorio:|echo -n 'Introduce el nombre del archivo a borrar: '; read archivo; git rm --cached \"$archivo\""
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
                if [ "$comando" = "nano" ]; then # Si la opción es "Realizar Cambios en un Archivo", llamamos a nano y esperamos a que el usuario termine de editar el archivo.
                    echo "Escriba los cambios y luego presione Ctrl+X para salir."
                    eval "$comando"
                    echo ""
                    echo "Presione Enter para continuar..."
                    read
                else # Si no, ejecutamos directamente el comando.
                    echo "Ejecutando: $comando"
                    eval "$comando"
                    echo ""
                    echo "Presione Enter para continuar..."
                    read
                fi
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

# Un script de shell que muestra un menú interactivo en la consola. El menú muestra una lista de opciones numeradas y permite al usuario seleccionar una opción para realizar una acción específica.

# El menú incluye las siguientes opciones:

#     Mostrar directorio: muestra el contenido del directorio actual utilizando el comando "ls".

#     Clonar Repositorio de GitHub: permite al usuario clonar un repositorio de GitHub utilizando el comando "git clone".

#     Cambiar a Rama Principal (main): permite al usuario cambiar a la rama principal (main) del repositorio local utilizando el comando "git checkout main".

#     Asegurarse de tener la Última Versión del Código: permite al usuario obtener la última versión del código del repositorio remoto utilizando el comando "git pull origin main".

#     Crear una Nueva Rama: permite al usuario crear una nueva rama utilizando el comando "git branch".

#     Realizar Cambios en un Archivo: abre el editor de texto Nano para que el usuario realice cambios en un archivo.

#     Agregar Nuevos Cambios al Repositorio: permite al usuario agregar nuevos cambios al repositorio utilizando los comandos "git add -A", "git commit" y un mensaje de confirmación personalizado.

#     Subir Cambios de la Nueva Rama al Proyecto de GitHub: permite al usuario subir cambios a la nueva rama del repositorio remoto utilizando el comando "git push origin".

#     Ver Ramas Unidas: muestra una lista de ramas que han sido unidas utilizando el comando "git branch --merged".

#     Unir la Nueva Rama con la Rama Principal (main): permite al usuario unir la nueva rama con la rama principal (main) utilizando los comandos "git checkout main" y "git merge".

#     Subir las Dos Ramas a GitHub: permite al usuario subir ambas ramas al repositorio remoto utilizando el comando "git push origin main".

#     Borrar Rama de Repositorio Externo de GitHub: permite al usuario borrar una rama del repositorio remoto utilizando el comando "git push origin --delete".

#     Ver Ramas: muestra una lista de todas las ramas locales y remotas utilizando el comando "git branch -a".

#     Borrar Rama de Copia Local: permite al usuario borrar una rama de la copia local del repositorio utilizando el comando "git branch -d".

#     Borrar Archivo del Repositorio: permite al usuario borrar un archivo del repositorio utilizando el comando "git rm --cached".

#     Salir: finaliza el script y sale del menú.

# El script utiliza un array para almacenar todas las opciones del menú y sus correspondientes comandos de shell. Utiliza un bucle while para mostrar el menú continuamente hasta que el usuario seleccione la opción de salir. Cuando el usuario selecciona una opción, el script utiliza un caso de switch para ejecutar el comando correspondiente a la opción seleccionada. También incluye manejo de errores básico para opciones in