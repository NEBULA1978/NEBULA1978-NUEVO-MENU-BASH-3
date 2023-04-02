#!/bin/bash


# Pedir al usuario que ingrese 'crear' o 'eliminar'
read -p "Ingrese 'crear' para agregar '.sh' a los nombres de archivo, o 'eliminar' para eliminar '.sh' de los nombres de archivo: " opcion

# Si la opción es 'crear', agregar '.sh' al final de los nombres de archivo
if [[ "$opcion" == "crear" ]]; then
    for file in *; do
        mv "$file" "${file}.sh"
    done

# Si la opción es 'eliminar', eliminar '.sh' del final de los nombres de archivo
elif [[ "$opcion" == "eliminar" ]]; then
    for file in *.sh; do
        mv "$file" "${file%.sh}"
    done

# Si la opción ingresada no es 'crear' ni 'eliminar', mostrar un mensaje de error
else
    echo "Opción inválida. Por favor ingrese 'crear' o 'eliminar'."
    exit 1
fi

# Hacer el script ejecutable
# chmod +x nombre_del_archivo.sh

# for file in *; do mv "$file" "${file}.sh"; done

# for filename in /home/next/Música/bash-master/00_tutorial; do mv "$filename" "${filename%.00_tutorial*}"; done

# Este comando utiliza un ciclo for para recorrer todos los archivos en el directorio actual (* significa todos los archivos) y utiliza el comando mv para renombrar cada archivo, añadiendo la extensión .sh al final del nombre original.

# Ten en cuenta que este comando renombrará todos los archivos en el directorio actual, incluyendo aquellos que ya tengan la extensión .sh. Si deseas renombrar solo ciertos archivos, puedes especificar un patrón de búsqueda más específico en lugar del comodín *.
