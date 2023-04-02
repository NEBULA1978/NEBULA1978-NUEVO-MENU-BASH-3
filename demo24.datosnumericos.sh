#!/bin/bash
#Ejemplo 24: procesar datos numéricos

# NO BIEN

# echo "Introduzca el radio de una circunferencia"
# read radio
# let "PI = 3,1416"
# let "longitud = 2*PI*radio"
# let "area = PI * radio**2"
# echo "CUIDADO: Los siguientes datos no son fiables:"
# echo "La longitud de la circunferencia es $longitud"
# echo "El área de la circunferencia es $area"

echo "Introduzca el radio de una circunferencia"
read -r radio
PI=3.1416
((longitud = 2 * PI * radio))
((area = PI * radio ** 2))
echo "CUIDADO: Los siguientes datos no son fiables:"
echo "La longitud de la circunferencia es $longitud"
echo "El área de la circunferencia es $area"

# En este nuevo script, se utiliza la sintaxis (( )) para realizar las operaciones aritméticas en lugar del comando let. Además, se corrigió el valor de PI para utilizar un punto en lugar de una coma.

# Es importante tener en cuenta que aunque se haya utilizado la sintaxis alternativa sugerida por Shellcheck, el resultado final del script sigue siendo el mismo que el original. La principal diferencia es que la nueva versión del script es más legible y eficiente en términos de velocidad de ejecución.
