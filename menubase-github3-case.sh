#!/bin/bash

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
        echo "$i. ${opciones[$i]%%|*}"
    done
    read opcion

    if [[ "$opcion" =~ ^[0-9]+$ ]] && ((opcion < ${#opciones[@]})); then
        case "$opcion" in
            0)
                ls
                ;;
            1)
                echo -n 'Introduce la dirección del repositorio a clonar: '
                read direccion
                git clone "$direccion"
                ;;
            2)
                git checkout main
                ;;
            3)
                git pull origin main
                ;;
            4)
                git branch
                ;;
            5)
                nano
                ;;
            6)
                git add -A
                echo -n 'Introduce un mensaje para el commit: '
                read mensaje
                git commit -m "$mensaje"
                ;;
            7)
                git push origin
                ;;
            8)
                git branch --merged
                ;;
            9)
                git checkout main
                git merge
                ;;
            10)
                git push origin main
                ;;
            11)
                echo -n 'Introduce el nombre de la rama a borrar: '
                read rama
                git push origin --delete "$rama"
                ;;
            12)
                git branch -a
                ;;
            13)
                echo -n 'Introduce el nombre de la rama a borrar: '
                read rama
                git branch -d "$rama"
                ;;
            14)
                echo -n 'Introduce el nombre del archivo a borrar: '
                read archivo
                git rm --cached "$archivo"
                ;;
            15)
                exit 0
                ;;
             *)
                echo "Opción inválida. Presione Enter para continuar..."
                read
                ;;
        esac
    else
        echo "Opción inválida. Presione Enter para continuar..."
        read
    fi
done
