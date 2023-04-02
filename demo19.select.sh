#!/bin/bash
#Ejemplo : uso de la construcción select

# opciones="Entrar Salir"
# select opc in $opciones; do
# 	if [ "$opc" = "Salir" ]; then
# 		echo Saliendo...
# 		break
# 	elif [ "$opc" = "Entrar" ]; then
# 		echo Hemos entrado...
# 	else
# 		echo Opción errónea
# 	fi
# done
# echo FIN DEL SCRIPT
# exit 0

opciones="Entrar Salir"
select opc in $opciones; do
	if [ "$opc" = "Salir" ]; then
		echo Saliendo...
		break
	elif [ "$opc" = "Entrar" ]; then
		echo Hemos entrado...
	elif [ $((REPLY % 2)) -eq 0 ]; then
		echo "Opción par"
	else
		echo "Opción impar"
	fi
done
echo FIN DEL SCRIPT
exit 0

# La salida del script con el elif sería algo como esto:

# bash

# 1) Entrar
# 2) Salir
# #? 1
# Hemos entrado...
# Opción impar
# #? 2
# Saliendo...
# FIN DEL SCRIPT