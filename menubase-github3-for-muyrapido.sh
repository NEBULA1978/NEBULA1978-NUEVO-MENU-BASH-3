#!/bin/bash

opciones=(
    "Mostrar directorio:|ls"
    "Salir:|exit 0"
    "Clonar Repositorio de GitHub:|echo -n 'Introduce la dirección del repositorio a clonar: '; read direccion; git clone \"$direccion\""
    "Cambiar a Rama Principal (main):|git checkout main"
    "Asegurarse de tener la Última Versión del Código:|git pull origin main"
    "Crear una Nueva Rama:|git branch"
    "Realizar Cambios en un Archivo:|nano"
    "Agregar Nuevos Cambios al Repositorio:|git add -A; read -p 'Introduce un mensaje para el commit: ' mensaje; git commit -m \"$mensaje\""
    "Subir Cambios de la Nueva Rama al Proyecto de GitHub:|git push origin"
    "Ver Ramas Unidas:|git branch --merged"
    "Unir la Nueva Rama con la Rama Principal (main):|git checkout main; git merge"
    "Subir las Dos Ramas a GitHub:|git push origin main"
    "Borrar Rama de Repositorio Externo de GitHub:|read -p 'Introduce el nombre de la rama a borrar: ' rama; git push origin --delete \"$rama\""
    "Ver Ramas:|git branch -a"
    "Borrar Rama de Copia Local:|read -p 'Introduce el nombre de la rama a borrar: ' rama; git branch -d \"$rama\""
    "Borrar Archivo del Repositorio:|read -p 'Introduce el nombre del archivo a borrar: ' archivo; git rm --cached \"$archivo\""
)

opciones_validas=()

mapfile -t opciones_validas < <(seq 0 $((${#opciones[@]} - 1)))

while true; do
    clear
    echo "Ingrese el número de la opción deseada:"
    for i in "${!opciones[@]}"; do
        echo "$i. ${opciones[$i]%%|*}"
    done

    read -r "Opción: " opcion_elegida

    if [[ " ${opciones_validas[*]} " =~ ${opcion_elegida} ]]; then
        clear
        eval "${opciones[$opcion_elegida]#*|}"
        read -r "Presione Enter para continuar..."
    else
        echo "Opción inválida."
        read -r "Presione Enter para continuar..."
    fi
done
