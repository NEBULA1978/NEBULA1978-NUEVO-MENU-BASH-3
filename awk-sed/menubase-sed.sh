#!/bin/bash
while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dato"
    echo "5. Sustituir palabra puedo por voy de una fase con echo y sed"
    echo "6. Mostrar el archivo out.txt con cat"
    echo "7. Mostrar las lineas del 3 al 7 del archivo out.txt con sed"
    echo "8. Mostrar todas las lineas del archivo out.txt con sed"
    echo "9. Eliminar todas las lineas del 3 al 7 del archivo out.txt con sed"
    echo "10. Mostrar solo las lineas del 3 al 7"
    echo "11. Sustituir una palabra por otra dentro de un arvhivo de texto este donde este la palabra dentro del archivo out.txt con sed"
    echo "12. Sustituir una palabra por otra dentro de un arvhivo de texto este la linea 8 dentro del archivo out.txt con sed"
    echo "13. Menos la linea 8 introduce la palabra que le decimos"
    echo "14. Insertar palabra despues de la linea 8"
    echo "15. Insertar palabra antes de la linea 8"
    echo "16. Eliminar una linea annes de la ultima linea e introduce palabra"
    echo "17. Agregar una linea al final e introduce palabra"
    echo "18. Mostrar la 1º linea de un archivo out.txt con sed"
    echo "19. Mostrar la 8º linea de un archivo out.txt con sed"
    echo "20. Mostrar la ultima linea de un archivo out.txt con sed"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando datos"
        date
        read foo
        ;;
    5)
        echo "Sustituir palabra puedo por voy de una fase con echo y sed"
        echo "Este es un mensaje de prueba con el simbolo | puedo ejecutar otro comando" | sed 's/puedo/voy/g'
        read foo
        ;;
    6)
        echo "Mostrar el archivo out.txt con cat"
        cat out.txt
        read foo
        ;;
    7)
        echo "Mostrar las lineas del 3 al 7 del archivo out.txt con sed"
        cat out.txt | sed -n '3,7 p'
        read foo
        ;;
    8)
        echo "Mostrar tolas las lineas del archivo out.txt con sed"
        cat out.txt | sed '3d'
        read foo
        ;;
    9)
        echo "Eliminar todas las lineas del 3 al 7 del archivo out.txt con sed"
        cat out.txt | sed '3,7d'
        read foo
        ;;
    10)
        echo "Mostrar solo las lineas del 3 al 7"
        cat out.txt | sed '3,7!d'
        read foo
        ;;
    11)
        echo "Sustituir una palabra por otra dentro de un arvhivo de texto este donde este la palabra dentro del archivo out.txt con sed"
        cat out.txt | sed 's/todoreal/real/g'
        cat out.txt | sed '5 s/todoreal/real/g'
        read foo
        ;;
    12)
        echo "Sustituir una palabra por otra dentro de un arvhivo de texto este la linea 8 dentro del archivo out.txt con sed"
        cat out.txt | sed '/8/ cprueba'

        read foo
        ;;
    13)
        echo "Menos la linea 8 introduce la palabra que le decimos con sed"
        cat out.txt | sed '/8/ !cprueba'

        read foo
        ;;
    14)
        echo "Insertar palanra despues de la linea 8"
        cat out.txt | sed '/8/ aprueba'

        read foo
        ;;
    15)
        echo "Insertar palanra antes de la linea 8"
        cat out.txt | sed '/8/ iprueba'

        read foo
        ;;
    16)
        echo "Eliminar una linea anes de la ultima linea e introduce palabra prueba"
        cat out.txt | sed '$1 prueba'

        read foo
        ;;
    17)
        echo "Agregar una linea al final e introduce palabra"
        cat out.txt | sed '$a prueba'

        read foo
        ;;
    18)
        echo "Mostrar la 1º linea de un archivo out.txt con sed"
        cat out.txt | sed -n '1p'

        read foo
        ;;
    19)
        echo "Mostrar la 1º linea de un archivo out.txt con sed"
        cat out.txt | sed -n '8p'

        read foo
        ;;
    20)
        echo "Mostrar la ultima linea de un archivo out.txt con sed"
        sed -i -n '$p' out.txt

        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
