#!/bin/bash
#Ejemplo 26: listas

# lista=("Elemento 0" "Elemento 1" "Elemento 2" [10]="Elemento 9")
# echo "Número de elementos de la lista: ${#lista[*]}"
# echo "Elemento 0: ${lista[0]}"
# echo "Elemento 4: ${lista[4]} 	(no existe)"
# echo "Toda la lista: ${lista[*]}"


# Ejemplo 26: listas

lista=("Elemento 0" "Elemento 1" "Elemento 2" [10]="Elemento 9")

mostrar_menu() {
    echo "1. Agregar elemento a la lista"
    echo "2. Eliminar elemento de la lista"
    echo "3. Vaciar la lista"
    echo "4. Salir"
}

mostrar_lista() {
    echo "Elementos en la lista:"
    echo "${lista[*]}"
}

agregar_elemento() {
    echo "Introduzca el elemento a agregar:"
    read -r elemento
    lista+=("$elemento")
    echo "Elemento agregado a la lista"
}

eliminar_elemento() {
    echo "Introduzca el índice del elemento a eliminar:"
    read -r indice
    unset "lista[$indice]"
    echo "Elemento eliminado de la lista"
}

vaciar_lista() {
    lista=()
    echo "Lista vaciada"
}

while true; do
    mostrar_lista
    mostrar_menu
    read -r opcion

    case "$opcion" in
    1)
        agregar_elemento
        ;;
    2)
        eliminar_elemento
        ;;
    3)
        vaciar_lista
        ;;
    4)
        echo "Saliendo..."
        exit 0
        ;;
    *)
        echo "Opción inválida"
        ;;
    esac
done

# En este código, se han agregado comillas a las cadenas de caracteres para evitar la expansión de globos y la división de palabras. Además, se han agregado las funciones necesarias para agregar, eliminar y vaciar elementos de la lista. Estas funciones realizan la tarea correspondiente y luego imprimen un mensaje en la consola para informar al usuario.

# Finalmente, se utiliza un bucle while para mostrar continuamente el menú al usuario y ejecutar la opción correspondiente hasta que el usuario elija la opción "Salir" en el menú. Cuando esto sucede, el script se sale con el comando exit 0.

# Espero que este código te sea útil y te ayude a comprender cómo utilizar listas en Bash y cómo se pueden utilizar en un menú interactivo.


# ERROR

# lista=("Elemento 0" "Elemento 1" "Elemento 2" [10]="Elemento 9")

# mostrar_menu() {
#     echo "1. Agregar elemento a la lista"
#     echo "2. Eliminar elemento de la lista"
#     echo "3. Vaciar la lista"
#     echo "4. Salir"
# }

# mostrar_lista() {
#     echo "Elementos en la lista:"
#     echo "${lista[*]}"
# }

# agregar_elemento() {
#     echo "Introduzca el elemento a agregar:"
#     read -r elemento
#     lista+=("$elemento")
#     echo "Elemento agregado a la lista"
# }

# eliminar_elemento() {
#     echo "Introduzca el índice del elemento a eliminar:"
#     read -r indice
#     unset lista[$indice]
#     echo "Elemento eliminado de la lista"
# }

# vaciar_lista() {
#     lista=()
#     echo "Lista vaciada"
# }

# while true; do
#     mostrar_lista
#     mostrar_menu
#     read -r opcion

#     case "$opcion" in
#     1)
#         agregar_elemento
#         ;;
#     2)
#         eliminar_elemento
#         ;;
#     3)
#         vaciar_lista
#         ;;
#     4)
#         echo "Saliendo..."
#         break
#         ;;
#     *)
#         echo "Opción inválida"
#         ;;
#     esac
# done

# En este ejemplo, la lista lista ya está definida al inicio del script con algunos elementos. Luego, se define una función mostrar_menu() para mostrar el menú de opciones al usuario, y otra función mostrar_lista() para mostrar los elementos de la lista actual.

# Además, se definen tres funciones adicionales para cada una de las opciones del menú: agregar_elemento(), eliminar_elemento() y vaciar_lista(). Estas funciones realizan la tarea correspondiente y luego imprimen un mensaje en la consola para informar al usuario.

# Finalmente, se utiliza un bucle while para mostrar continuamente el menú al usuario y ejecutar la opción correspondiente hasta que el usuario elija la opción "Salir" en el menú.

# Espero que esto te ayude a comprender cómo utilizar listas en Bash y cómo se pueden utilizar en un menú interactivo.
