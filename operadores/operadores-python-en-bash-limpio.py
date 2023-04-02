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



# EJecuto desde python3 los comandos de bash

# MAL
# Operaciones con enteros
# os.system("echo $((3 + 4))")
# os.system("echo $((3 - 4))")
# os.system("echo $((3 * 4))")
# os.system("echo $((3 / 4))")
# os.system("echo $((10 % 3))")
# os.system("echo $((10 / 3))")
# os.system("echo $((2 ** 3))")
# os.system("echo $((2 ** 3 + 3 - 7 / 4))")

# BIEN

import subprocess
print("Operaciones con enteros")

# Operaciones con enteros
result = subprocess.run(["bash", "-c", "echo $((3 + 4))"], capture_output=True, text=True)
print(result.stdout)

result = subprocess.run(["bash", "-c", "echo $((3 - 4))"], capture_output=True, text=True)
print(result.stdout)

result = subprocess.run(["bash", "-c", "echo $((3 * 4))"], capture_output=True, text=True)
print(result.stdout)

result = subprocess.run(["bash", "-c", "echo $((3 / 4))"], capture_output=True, text=True)
print(result.stdout)

result = subprocess.run(["bash", "-c", "echo $((10 % 3))"], capture_output=True, text=True)
print(result.stdout)

result = subprocess.run(["bash", "-c", "echo $((10 // 3))"], capture_output=True, text=True)
print(result.stdout)

result = subprocess.run(["bash", "-c", "echo $((2 ** 3))"], capture_output=True, text=True)
print(result.stdout)

result = subprocess.run(["bash", "-c", "echo $((2 ** 3 + 3 - 7 / 4))"], capture_output=True, text=True)
print(result.stdout)


# ///////////////////////////////////////////////
# ///////////////////////////////////////////////# 


# EJecuto desde python3 los comandos de bash
print("Operaciones con cadenas de texto")

# Operaciones con cadenas de texto
os.system('echo "Hola " "Python " "¿Qué tal?"')
os.system('echo "Hola " "$5"')

# ///////////////////////////////////////////////
# ///////////////////////////////////////////////# 


# EJecuto desde python3 los comandos de bash
print("Operaciones mixtas")

os.system('echo "Hola " "Hola " "Hola " "Hola " "Hola "')
os.system('echo "Hola " "Hola " "Hola " "Hola " "Hola " "Hola " "Hola "')

my_float = float(os.popen("echo '2.5 * 2' | bc").read().strip())
my_int = int(my_float)

holas = " ".join(["Hola" for i in range(my_int)])
os.system(f'echo "Hola " "{holas}"')


# EJecuto desde python3 los comandos de bash

print("Operaciones con enteros")

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


# EJecuto desde python3 los comandos de bash

print("Operaciones con cadenas de texto")

# DOS FALLOS
# Operaciones con cadenas de texto
# os.system('[ \'Hola\' \> \'Python\' ] && echo \'1\' || echo \'0\'')
# os.system('[ \'Hola\' \< \'Python\' ] && echo \'0\' || echo \'1\'')
# os.system('[ \'aaaa\' \>= \'abaa\' ] && echo \'1\' || echo \'0\'')
# os.system('[ $(echo -n \'aaaa\' | wc -c) -ge $(echo -n \'abaa\' | wc -c) ] && echo \'0\' || echo \'1\'')
# os.system('[ \'Hola\' \<= \'Python\' ] && echo \'1\' || echo \'0\'')
# os.system('[ \'Hola\' = \'Hola\' ] && echo \'0\' || echo \'1\'')
# os.system('[ \'Hola\' != \'Python\' ] && echo \'1\' || echo \'0\'')



# Operaciones con cadenas de texto
os.system('[ \'Hola\' \> \'Python\' ] && echo \'1\' || echo \'0\'')
os.system('[ \'Hola\' \< \'Python\' ] && echo \'0\' || echo \'1\'')
os.system('[ \'aaaa\' \>= \'abaa\' ] && echo \'1\' || echo \'0\'')
os.system('[ $(echo -n \'aaaa\' | wc -c) -ge $(echo -n \'abaa\' | wc -c) ] && echo \'0\' || echo \'1\'')
os.system('[ \'Hola\' \<= \'Python\' ] && echo \'1\' || echo \'0\'')
os.system('[ \'Hola\' = \'Hola\' ] && echo \'0\' || echo \'1\'')
os.system('[ \'Hola\' != \'Python\' ] && echo \'1\' || echo \'0\'')

# ///////////////////////////////////////////////# 
# ///////////////////////////////////////////////


# EJecuto desde python3 los comandos de bash



print("Basada en el Álgebra de Boole")

# Basada en el Álgebra de Boole
# (True es 0 y False es 1)
os.system('test 3 -gt 4 -a "Hola" \> "Python" && echo "0" || echo "1"')
os.system('test 3 -gt 4 -o "Hola" \> "Python" && echo "0" || echo "1"')
os.system('test 3 -lt 4 -a "Hola" \< "Python" && echo "0" || echo "1"')
os.system('test 3 -lt 4 -o "Hola" \> "Python" && echo "0" || echo "1"')
# os.system('test 3 -lt 4 -o \( "Hola" \> "Python" -a 4 -eq 4 \) && echo "0" || echo "1"')
# ERROR
os.system('[ 3 -lt 4 ] && echo "0" || echo "1"')
os.system('test \( 3 -gt 4 \) -eq 0 && echo "0" || echo "1"')



# ////D///////////////////////////////////////////# 
# ///////////////////////////////////////////////


print("Operadores aritméticos")

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

print("Operadores comparativos")

# EJecuto desde python3 los comandos de bash

# a = "Hola"
# b = "Python"

# igual = os.system(f'test "$a" = "$b" && echo "True" || echo "False"')
# diferente = os.system(f'test "$a" != "$b" && echo "True" || echo "False"')
# mayor = os.system(f'test "$a" \> "$b" && echo "True" || echo "False"')
# menor = os.system(f'test "$a" \< "$b" && echo "True" || echo "False"')
# mayor_igual = os.system(f'test "$a" \>= "$b" && echo "True" || echo "False"')
# menor_igual = os.system(f'test "$a" \<= "$b" && echo "True" || echo "False"')

# print(f"¿Es {a} igual a {b} ? {igual}")
# print(f"¿Es {a} diferente a {b} ? {diferente}")
# print(f"¿Es {a} mayor que {b} ? {mayor}")
# print(f"¿Es {a} menor que {b} ? {menor}")
# print(f"¿Es {a} mayor o igual que {b} ? {mayor_igual}")
# print(f"¿Es {a} menor o igual que {b} ? {menor_igual}")

# FALLAN LOS DOS PRIMEROS
# import subprocess

a = "Hola"
b = "Python"

igual = subprocess.run(f'test "$a" = "$b" && echo "True" || echo "False"', shell=True, stdout=subprocess.PIPE).stdout.decode().strip()
diferente = subprocess.run(f'test "$a" != "$b" && echo "True" || echo "False"', shell=True, stdout=subprocess.PIPE).stdout.decode().strip()
mayor = subprocess.run(f'test "$a" \> "$b" && echo "True" || echo "False"', shell=True, stdout=subprocess.PIPE).stdout.decode().strip()
menor = subprocess.run(f'test "$a" \< "$b" && echo "True" || echo "False"', shell=True, stdout=subprocess.PIPE).stdout.decode().strip()
mayor_igual = subprocess.run(f'test "$a" \>= "$b" && echo "True" || echo "False"', shell=True, stdout=subprocess.PIPE).stdout.decode().strip()
menor_igual = subprocess.run(f'test "$a" \<= "$b" && echo "True" || echo "False"', shell=True, stdout=subprocess.PIPE).stdout.decode().strip()

print(f"¿Es {a} igual a {b} ? {igual}")
print(f"¿Es {a} diferente a {b} ? {diferente}")
print(f"¿Es {a} mayor que {b} ? {mayor}")
print(f"¿Es {a} menor que {b} ? {menor}")
print(f"¿Es {a} mayor o igual que {b} ? {mayor_igual}")
print(f"¿Es {a} menor o igual que {b} ? {menor_igual}")


# ////D///////////////////////////////////////////# 
# ///////////////////////////////////////////////

print("Operadores lógicos")

# # # EJecuto desde python3 los comandos de bash


# c = 3
# d = 4
# a = "Hola"
# b = "Python"

# and_logico = os.system(f'test $c -gt $d -a "$a" \> "$b" && echo "True" || echo "False"')
# or_logico = os.system(f'test $c -gt $d -o "$a" \> "$b" && echo "True" || echo "False"')
# not_logico = os.system(f'test ! \( $c -gt $d \) && echo "True" || echo "False"')

# print(f"El resultado de {c} > {d} and {a} > {b} es {and_logico}")
# print(f"El resultado de {c} > {d} or {a} > {b} es {or_logico}")
# print(f"El resultado de not {c} > {d} es {not_logico}")

# import os

# c = 3
# d = 4
# a = "Hola"
# b = "Python"

# and_logico = os.system(f'test $c -gt $d -a "$a" \> "$b" && echo "True" || echo "False"')
# or_logico = os.system(f'test $c -gt $d -o "$a" \> "$b" && echo "True" || echo "False"')
# not_logico = os.system(f'test \( $c -gt $d \) && echo "True" || echo "False"')

# print(f"El resultado de {c} > {d} and {a} > {b} es {and_logico}")
# print(f"El resultado de {c} > {d} or {a} > {b} es {or_logico}")
# print(f"El resultado de not {c} > {d} es {not_logico}")

c = 3
d = 4
a = "Hola"
b = "Python"

and_logico = os.system(f'test $c -gt $d -a "$a" \> "$b" && echo "True" || echo "False"')
or_logico = os.system(f'test $c -gt $d -o "$a" \> "$b" && echo "True" || echo "False"')
not_logico = os.system(f'test \( $c -gt $d \) && echo "True" || echo "False"')

print(f"El resultado de {c} > {d} and {a} > {b} es {and_logico}")
print(f"El resultado de {c} > {d} or {a} > {b} es {or_logico}")
print(f"El resultado de not {c} > {d} es {not_logico}")

# ////D///////////////////////////////////////////# 
# ///////////////////////////////////////////////