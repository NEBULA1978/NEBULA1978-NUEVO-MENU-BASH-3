#!/bin/bash

opciones=(
    "Mostrar directorio:|ls"
    "Salir:|exit 0"
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
    *)
        echo "Opción inválida. Presione Enter para continuar..."
        read
        ;;
    esac

done

# El menú consiste en una sola pregunta que pide al usuario ingresar un número:

# Escribe un número:

# Luego, se utilizan operadores relacionales para comparar el número ingresado con los valores 5 y 10:

# bash

# (//////////////////////////////////////////)
# (//////////////////////////////////////////)

# EJEMPLO 1
echo "Ingrese un número:"
read -r numero

if [ "$numero" -gt 5 ] || [ "$numero" -lt 10 ]; then
    echo "Tu número es mayor que 5 o menor que 10"
elif [ "$numero" -ge 5 ] && [ "$numero" -le 10 ]; then
    echo "Tu número está en el rango [5, 10]"
elif [ "$numero" -eq 5 ] || [ "$numero" -eq 10 ]; then
    echo "Tu número es igual a 5 o a 10"
elif [ "$numero" -ne 5 ] && [ "$numero" -ne 10 ]; then
    echo "Tu número es distinto a 5 y a 10"
else
    echo "El número no cumple ninguna de las comparaciones especificadas"
fi

