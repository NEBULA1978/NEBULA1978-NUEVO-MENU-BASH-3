#!/bin/bash

# Usando find y while
find . -maxdepth 1 -type f -print0 | while IFS= read -r -d '' file; do
    echo "$file"
done

# Usando un bucle for
for file in *; do
    if [[ -f "$file" ]]; then
        echo "$file"
    fi
done

# En el primer ejemplo, find busca todos los archivos (-type f) en el directorio actual (.) con una profundidad máxima de 1 (-maxdepth 1). La opción -print0 se utiliza para imprimir los nombres de los archivos separados por el carácter nulo (\0), lo que garantiza que los nombres de los archivos se manejen correctamente incluso si contienen espacios o caracteres especiales. Luego, se utiliza un bucle while junto con read -r -d '' para leer cada nombre de archivo, que se almacena en la variable file. Finalmente, se imprime el nombre de archivo con echo.

# En el segundo ejemplo, se utiliza un bucle for para iterar sobre todos los archivos en el directorio actual (*). Se verifica si cada archivo es un archivo regular (-f) utilizando la condición [[ -f "$file" ]], y si es así, se imprime el nombre del archivo con echo.