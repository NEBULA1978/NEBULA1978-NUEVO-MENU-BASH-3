#!/bin/bash
# Ejemplo 14: argumentos de script

echo "Nombre del script: $0"
echo -n "Valor de los argumentos: "
echo "$1 $2 $3 $4 $5 $6 $7 $8 $9"
echo "Número de argumentos: $#"
echo "Todos los argumentos: $*"
echo "Todos los argumentos: $@"

if [ $# -ne 1 ]; then
    echo "Número de parámetros incorrecto"
    exit 1
fi

if [ ! -e "$1" ]; then
    echo "No existe el fichero"
    exit 1
fi

if [ -f "$1" ]; then
    echo "$1 es un fichero ordinario"
fi

if [ -d "$1" ]; then
    echo "$1 es un directorio"
fi

if [ -L "$1" ]; then
    echo "$1 es un enlace simbólico"
fi

if [ -p "$1" ]; then
    echo "$1 es un archivo especial de tubería"
fi

if [ -S "$1" ]; then
    echo "$1 es un socket"
fi

if [ -r "$1" ]; then
    echo "$1 es un fichero legible"
fi

if [ -s "$1" ]; then
    echo "$1 es un fichero no vacío"
fi

if [ -w "$1" ]; then
    echo "$1 es un fichero modificable"
fi

if [ -x "$1" ]; then
    echo "$1 es un fichero ejecutable"
fi

if [ -G "$1" ]; then
    echo "El usuario actual pertenece al grupo propietario de $1"
fi

exit 0

# l script imprimirá la siguiente salida:

# Nombre del script: ./script.sh
# Valor de los argumentos: archivo.txt hola 123

# Número de argumentos: 3
# Todos los argumentos: archivo.txt hola 123
# Todos los argumentos: archivo.txt hola 123
# archivo.txt es un fichero ordinario
# archivo.txt es un fichero legible
# archivo.txt es un fichero no vacío
# archivo.txt es un fichero modificable
