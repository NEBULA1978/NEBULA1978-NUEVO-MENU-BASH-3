#!/bin/bash

opciones=(
    "Mostrar directorio:|ls"
    "Salir:|exit 0"
)

opciones+=(
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
    
)

while true; do
    clear
    echo "Ingrese el número de la opción deseada:"
    for i in "${!opciones[@]}"; do
        echo "$i. ${opciones[$i]%%|*}"
    done
    read opcion

    case "$opcion" in
    0)
        clear
        ls
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    1)
        exit 0
        ;;
    2)
        clear
        echo -n "Introduce la dirección del repositorio a clonar: "
        read direccion
        git clone "$direccion"
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    3)
        clear
        git checkout main
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    4)
        clear
        git pull origin main
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    5)
        clear
        git branch
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    6)
        clear
        echo "Escriba los cambios y luego presione Ctrl+X para salir."
        nano
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    7)
        clear
        git add -A
        echo -n "Introduce un mensaje para el commit: "
        read mensaje
        git commit -m "$mensaje"
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    8)
        clear
        git push origin
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    9)
        clear
        git branch --merged
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    10)
        clear
        git checkout main
        git merge
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    11)
        clear
        git push origin main
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    12)
        clear
        echo -n "Introduce el nombre de la rama a borrar: "
        read rama
        git push origin --delete "$rama"
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    13)
        clear
        git branch -a
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    14)
        clear
        echo -n "Introduce el nombre de la rama a borrar: "
        read rama
        git branch -d "$rama"
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    15)
        clear
        echo -n "Introduce el nombre del archivo a borrar: "
        read archivo
        git rm --cached "$archivo"
        echo ""
        echo "Presione Enter para continuar..."
        read
        ;;
    *)
        echo "Opción inválida. Presione Enter para continuar..."
        read
        ;;
    esac
done
