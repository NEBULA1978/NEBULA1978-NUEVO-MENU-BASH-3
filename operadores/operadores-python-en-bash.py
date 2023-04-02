import os

# Comparaciones con numeros
# WORD=8
# if [ $WORD -eq 10 ]; then #si son igual WORD=8 y el valor 10
# if [ $WORD -ne 10 ]; then #si no son igual
# if [ $WORD -lt 10 ]; then #si es menor
# if [ $WORD -gt 10 ]; then #si es mayor
# if [ $WORD -le 10 ]; then #si es menor o igual
# if [ $WORD -ge 5 ]; then #si es mayor o igual
#     echo "Run is fun!!"
# else
#     echo "--------"

# fi


# ///////////////////////////////////////////////
# ///////////////////////////////////////////////

### Operadores Aritméticos PYTHON3###

# Operaciones con enteros
# print(3 + 4)
# print(3 - 4)
# print(3 * 4)
# print(3 / 4)
# print(10 % 3)
# print(10 // 3)
# print(2 ** 3)
# print(2 ** 3 + 3 - 7 / 1 // 4)

# ///////////////////////////////////////////////
# BASH

# Operaciones con enteros
# echo $((3 + 4))
# echo $((3 - 4))
# echo $((3 * 4))
# echo $((3 / 4))
# echo $((10 % 3))
# echo $((10 / 3))
# echo $((2 ** 3))
# echo $((2 ** 3 + 3 - 7 / 1 / 4))


# EJecuto desde python3 los comandos de bash

# Operaciones con enteros
os.system("echo $((3 + 4))")
os.system("echo $((3 - 4))")
os.system("echo $((3 * 4))")
os.system("echo $((3 / 4))")
os.system("echo $((10 % 3))")
os.system("echo $((10 / 3))")
os.system("echo $((2 ** 3))")
os.system("echo $((2 ** 3 + 3 - 7 / 1 / 4))")


# ///////////////////////////////////////////////
# ///////////////////////////////////////////////# 

# Operaciones con cadenas de texto

# print("Hola " + "Python " + "¿Qué tal?")
# print("Hola " + str(5))

# ///////////////////////////////////////////////


# Operaciones con cadenas de texto
# echo "Hola " "Python " "¿Qué tal?"
# echo "Hola " "$5"

# EJecuto desde python3 los comandos de bash

# Operaciones con cadenas de texto
os.system('echo "Hola " "Python " "¿Qué tal?"')
os.system('echo "Hola " "$5"')

# ///////////////////////////////////////////////
# ///////////////////////////////////////////////# 

# Operaciones mixtas

# print("Hola " * 5)
# print("Hola " * (2 ** 3))

# my_float = 2.5 * 2
# print("Hola " * int(my_float))

# ///////////////////////////////////////////////# 

# Operaciones mixtas
# echo "Hola " "Hola " "Hola " "Hola " "Hola "
# echo "Hola " "Hola " "Hola " "Hola " "Hola " "Hola " "Hola "

# my_float=$(echo "2.5 * 2" | bc)
# echo "Hola " $(for i in $(seq 1 $(echo "scale=0; $my_float/1" | bc)); do echo -n "Hola "; done)

# EJecuto desde python3 los comandos de bash


# Operaciones mixtas
os.system('echo "Hola " "Hola " "Hola " "Hola " "Hola "')
os.system('echo "Hola " "Hola " "Hola " "Hola " "Hola " "Hola " "Hola "')

my_float = float(os.popen("echo '2.5 * 2' | bc").read().strip())
my_int = int(my_float)

holas = " ".join(["Hola" for i in range(my_int)])
os.system(f'echo "Hola " {holas}')


# ///////////////////////////////////////////////# 
### Operadores Comparativos ###
# ///////////////////////////////////////////////

# Operaciones con enteros
# print(3 > 4)
# print(3 < 4)
# print(3 >= 4)
# print(4 <= 4)
# print(3 == 4)
# print(3 != 4)

# ///////////////////////////////////////////////# 

# # Operaciones con enteros
# test 3 -gt 4 # False (1)
# echo $?
# test 3 -lt 4 # True (0)
# echo $?
# test 3 -ge 4 # False (1)
# echo $?
# test 4 -le 4 # True (0)
# echo $?
# test 3 -eq 4 # False (1)
# echo $?
# test 3 -ne 4 # True (0)
# echo $?

# Los números en paréntesis son los valores que se imprimen con el comando echo $? y representan el resultado de la comparación. 0 significa verdadero y 1 significa falso.

# EJecuto desde python3 los comandos de bash

# Operaciones con enteros
os.system('test 3 -gt 4 && echo "0" || echo "1"')
os.system('test 3 -lt 4 && echo "0" || echo "1"')
os.system('test 3 -ge 4 && echo "0" || echo "1"')
os.system('test 4 -le 4 && echo "0" || echo "1"')
os.system('test 3 -eq 4 && echo "0" || echo "1"')
os.system('test 3 -ne 4 && echo "0" || echo "1"')

# Este código ejecuta los comandos de Bash para comparar valores enteros y muestra el resultado (0 para verdadero y 1 para falso) utilizando la función os.system(). La salida de cada comando se mostrará en la consola.

# ///////////////////////////////////////////////# 
# ///////////////////////////////////////////////

# Operaciones con cadenas de texto
# print("Hola" > "Python")
# print("Hola" < "Python")
# print("aaaa" >= "abaa")  # Ordenación alfabética por ASCII
# print(len("aaaa") >= len("abaa"))  # Cuenta caracteres
# print("Hola" <= "Python")
# print("Hola" == "Hola")
# print("Hola" != "Python")

# ///////////////////////////////////////////////# 

# # Operaciones con cadenas de texto
# test "Hola" \> "Python" # False (1)
# echo $?
# test "Hola" \< "Python" # True (0)
# echo $?
# test "aaaa" \>= "abaa" # True (0)
# echo $?
# test $(echo -n "aaaa" | wc -c) -ge $(echo -n "abaa" | wc -c) # False (1)
# echo $?
# test "Hola" \<= "Python" # True (0)
# echo $?
# test "Hola" == "Hola" # True (0)
# echo $?
# test "Hola" != "Python" # True (0)
# echo $?


# Tenga en cuenta que para comparar cadenas de texto en bash, es necesario escapar los caracteres especiales (como < y >) con una barra invertida (\). También es necesario usar el comando wc -c para contar el número de caracteres en una cadena.

# EJecuto desde python3 los comandos de bash

# Operaciones con cadenas de texto
os.system('test "Hola" \> "Python" && echo "0" || echo "1"')
os.system('test "Hola" \< "Python" && echo "0" || echo "1"')
os.system('test "aaaa" \>= "abaa" && echo "0" || echo "1"')
os.system('test $(echo -n "aaaa" | wc -c) -ge $(echo -n "abaa" | wc -c) && echo "0" || echo "1"')
os.system('test "Hola" \<= "Python" && echo "0" || echo "1"')
os.system('test "Hola" == "Hola" && echo "0" || echo "1"')
os.system('test "Hola" != "Python" && echo "0" || echo "1"')



# ///////////////////////////////////////////////# 
# ///////////////////////////////////////////////

### Operadores Lógicos ###

# Basada en el Álgebra de Boole https://es.wikipedia.org/wiki/%C3%81lgebra_de_Boole
# print(3 > 4 and "Hola" > "Python")
# print(3 > 4 or "Hola" > "Python")
# print(3 < 4 and "Hola" < "Python")
# print(3 < 4 or "Hola" > "Python")
# print(3 < 4 or ("Hola" > "Python" and 4 == 4))
# print(not (3 > 4))

# ////D///////////////////////////////////////////# 

# # Basada en el Álgebra de Boole
# # (True es 0 y False es 1)
# test 3 -gt 4 -a "Hola" \> "Python" # False (1)
# echo $?
# test 3 -gt 4 -o "Hola" \> "Python" # True (0)
# echo $?
# test 3 -lt 4 -a "Hola" \< "Python" # True (0)
# echo $?
# test 3 -lt 4 -o "Hola" \> "Python" # True (0)
# echo $?
# test 3 -lt 4 -o \( "Hola" \> "Python" -a 4 -eq 4 \) # True (0)
# echo $?
# test \( 3 -gt 4 \) -eq 0 # True (0)
# echo $?


# Tenga en cuenta que en bash, el operador -a representa la operación lógica and, mientras que el operador -o representa la operación lógica or. También es necesario escapar los paréntesis con una barra invertida (\) para que sean interpretados correctamente.

# EJecuto desde python3 los comandos de bash

import os

# Basada en el Álgebra de Boole
# (True es 0 y False es 1)
os.system('test 3 -gt 4 -a "Hola" \> "Python" && echo "0" || echo "1"')
os.system('test 3 -gt 4 -o "Hola" \> "Python" && echo "0" || echo "1"')
os.system('test 3 -lt 4 -a "Hola" \< "Python" && echo "0" || echo "1"')
os.system('test 3 -lt 4 -o "Hola" \> "Python" && echo "0" || echo "1"')
os.system('test 3 -lt 4 -o \( "Hola" \> "Python" -a 4 -eq 4 \) && echo "0" || echo "1"')
os.system('test \( 3 -gt 4 \) -eq 0 && echo "0" || echo "1"')



# ////D///////////////////////////////////////////# 
# ///////////////////////////////////////////////

# Operadores aritméticos
# x = 3
# y = 4

# suma = x + y
# resta = x - y
# multiplicacion = x * y
# division = x / y
# residuo = x % y
# cociente = x // y
# potencia = x ** y

# print("La suma de", x, "y", y, "es", suma)
# print("La resta de", x, "y", y, "es", resta)
# print("La multiplicación de", x, "y", y, "es", multiplicacion)
# print("La división de", x, "y", y, "es", division)
# print("El residuo de la división de", x, "y", y, "es", residuo)
# print("El cociente de la división de", x, "y", y, "es", cociente)
# print("La potencia de", x, "elevado a", y, "es", potencia)


# ////D///////////////////////////////////////////# 

# # Operadores aritméticos
# x=3
# y=4

# suma=$((x + y))
# resta=$((x - y))
# multiplicacion=$((x * y))
# division=$((x / y))
# residuo=$((x % y))
# cociente=$((x / y))
# potencia=$((x ** y))

# echo "La suma de $x y $y es $suma"
# echo "La resta de $x y $y es $resta"
# echo "La multiplicación de $x y $y es $multiplicacion"
# echo "La división de $x y $y es $division"
# echo "El residuo de la división de $x y $y es $residuo"
# echo "El cociente de la división de $x y $y es $cociente"
# echo "La potencia de $x elevado a $y es $potencia"

# EJecuto desde python3 los comandos de bash

x = 3
y = 4

suma = x + y
resta = x - y
multiplicacion = x * y
division = x / y
residuo = x % y
cociente = x // y
potencia = x ** y

print("La suma de {} y {} es {}".format(x, y, suma))
print("La resta de {} y {} es {}".format(x, y, resta))
print("La multiplicación de {} y {} es {}".format(x, y, multiplicacion))
print("La división de {} y {} es {}".format(x, y, division))
print("El residuo de la división de {} y {} es {}".format(x, y, residuo))
print("El cociente de la división de {} y {} es {}".format(x, y, cociente))
print("La potencia de {} elevado a {} es {}".format(x, y, potencia))


# ////D///////////////////////////////////////////# 
# ///////////////////////////////////////////////
# Operadores comparativos
# a = "Hola"
# b = "Python"

# igual = a == b
# diferente = a != b
# mayor = a > b
# menor = a < b
# mayor_igual = a >= b
# menor_igual = a <= b

# print("¿Es", a, "igual a", b, "?", igual)
# print("¿Es", a, "diferente a", b, "?", diferente)
# print("¿Es", a, "mayor que", b, "?", mayor)
# print("¿Es", a, "menor que", b, "?", menor)
# print("¿Es", a, "mayor o igual que", b, "?", mayor_igual)
# print("¿Es", a, "menor o igual que", b, "?", menor_igual)


# ///////////////////////////////////////////////

# # Operadores comparativos
# a="Hola"
# b="Python"

# igual=$([ "$a" = "$b" ] && echo "True" || echo "False")
# diferente=$([ "$a" != "$b" ] && echo "True" || echo "False")
# mayor=$([ "$a" \> "$b" ] && echo "True" || echo "False")
# menor=$([ "$a" \< "$b" ] && echo "True" || echo "False")
# mayor_igual=$([ "$a" \>= "$b" ] && echo "True" || echo "False")
# menor_igual=$([ "$a" \<= "$b" ] && echo "True" || echo "False")

# echo "¿Es $a igual a $b ? $igual"
# echo "¿Es $a diferente a $b ? $diferente"
# echo "¿Es $a mayor que $b ? $mayor"
# echo "¿Es $a menor que $b ? $menor"
# echo "¿Es $a mayor o igual que $b ? $mayor_igual"
# echo "¿Es $a menor o igual que $b ? $menor_igual"


# EJecuto desde python3 los comandos de bash

a = "Hola"
b = "Python"

igual = os.system(f'test "$a" = "$b" && echo "True" || echo "False"')
diferente = os.system(f'test "$a" != "$b" && echo "True" || echo "False"')
mayor = os.system(f'test "$a" \> "$b" && echo "True" || echo "False"')
menor = os.system(f'test "$a" \< "$b" && echo "True" || echo "False"')
mayor_igual = os.system(f'test "$a" \>= "$b" && echo "True" || echo "False"')
menor_igual = os.system(f'test "$a" \<= "$b" && echo "True" || echo "False"')

print(f"¿Es {a} igual a {b} ? {igual}")
print(f"¿Es {a} diferente a {b} ? {diferente}")
print(f"¿Es {a} mayor que {b} ? {mayor}")
print(f"¿Es {a} menor que {b} ? {menor}")
print(f"¿Es {a} mayor o igual que {b} ? {mayor_igual}")
print(f"¿Es {a} menor o igual que {b} ? {menor_igual}")


# ////D///////////////////////////////////////////# 
# ///////////////////////////////////////////////

# Operadores lógicos
# c = 3
# d = 4

# and_logico = c > d and a > b
# or_logico = c > d or a > b
# not_logico = not (c > d)

# print("El resultado de", c, ">", d, "and", a, ">", b, "es", and_logico)
# print("El resultado de", c, ">", d, "or", a, ">", b, "es", or_logico)
# print("El resultado de not", c, ">", d, "es", not_logico)


# ///////////////////////////////////////////////

# # Operadores lógicos
# c=3
# d=4

# and_logico=$([ $c -gt $d ] && [ "$a" \> "$b" ] && echo "True" || echo "False")
# or_logico=$([ $c -gt $d ] || [ "$a" \> "$b" ] && echo "True" || echo "False")
# not_logico=$(! [ $c -gt $d ] && echo "True" || echo "False")

# echo "El resultado de $c > $d and $a > $b es $and_logico"
# echo "El resultado de $c > $d or $a > $b es $or_logico"
# echo "El resultado de not $c > $d es $not_logico"

# # EJecuto desde python3 los comandos de bash


c = 3
d = 4
a = "Hola"
b = "Python"

and_logico = os.system(f'test $c -gt $d -a "$a" \> "$b" && echo "True" || echo "False"')
or_logico = os.system(f'test $c -gt $d -o "$a" \> "$b" && echo "True" || echo "False"')
not_logico = os.system(f'test ! \( $c -gt $d \) && echo "True" || echo "False"')

print(f"El resultado de {c} > {d} and {a} > {b} es {and_logico}")
print(f"El resultado de {c} > {d} or {a} > {b} es {or_logico}")
print(f"El resultado de not {c} > {d} es {not_logico}")


# ////D///////////////////////////////////////////# 
# ///////////////////////////////////////////////