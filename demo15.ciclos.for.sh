#!/bin/bash
#Ejemplo 15: ciclo for

# Este es otro ejemplo en Bash de un ciclo for. En este caso, se utiliza el comando ls para obtener una lista de archivos en el directorio actual, y luego el ciclo for itera sobre cada uno de esos archivos y los imprime utilizando el comando echo.

# Sin embargo, el mensaje de advertencia generado por Shellcheck es correcto: Iterar sobre la salida de ls puede ser frágil y puede dar lugar a errores si los nombres de archivo contienen espacios, caracteres especiales o caracteres de nueva línea.

# Una alternativa más robusta para iterar sobre archivos en un directorio es utilizar patrones de coincidencia de nombres de archivo (globs) en lugar de ls. Por ejemplo, en lugar de for i in $(ls), se podría utilizar for i in * para iterar sobre todos los archivos en el directorio actual, o for i in *.txt para iterar sobre todos los archivos en el directorio actual que terminan en ".txt".



# NO BIEN
# for i in $(ls); do
# 	echo item: $i
# done

for i in *; do
	echo "item: $i"
done

# Esta versión del ciclo for utiliza el patrón de coincidencia * para iterar sobre todos los archivos en el directorio actual, en lugar de la salida de ls.