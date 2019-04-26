#!/usr/bin/env bash

##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  bash/lan.sh
##   Description:  Este script es para entender bash
##   Requirement:  --
##          Note:  --
##          Bugs:  --
##=================================================================================


# https://es.wikibooks.org/wiki/El_Manual_de_BASH_Scripting_B%C3%A1sico_para_Principiantes
# https://e-mc2.net/index.php/es/linux-es

####################
# comentorios
####################

# Este es un comentario de una linea.

: '
  Este es un comentario de
  multiple lineas
  y que contiene muchas cosas mas.
'

####################
# variables
####################

#Asignando variables
hola=1
#Llamando a la variable $hola
$hola
#Mostrando el contenido de la variable
echo $hola


# Se guarda en la variable el valor generado por $RANDOM,
# el % 5 asegura obtener un numero menor a 5 .
RNM=`expr $RANDOM % 5`
echo $RNM

####################
# operadores
####################

# Comparaciones de cadenas alfanumericas
#
# Operador		        Verdad (TRUE) si:
# ------------------------------------------
# cadena1 = cadena2	    cadena1 es igual a cadena2
# cadena1 != cadena2	cadena1 no es igual a cadena2
# cadena1 < cadena2 	cadena1 es menor que cadena2
# cadena1 > cadena 2	cadena1 es mayor que cadena 2
# -n cadena1		    cadena1 no es igual al valor nulo (longitud mayorque 0)
# -z cadena1		    cadena1 tiene un valor nulo (longitud 0)

# Comparacion de valores numericos
#
# Operador		    Verdad (TRUE) si:
# ------------------------------------------
# x -lt y			x menor que y
# x -le y			x menor o igual que y
# x -eq y			x igual que y
# x -ge y			x mayor o igual que y
# x -gt y			x mayor que y
# x -ne y			x no igual que y

# Comprobacion de atributos de fichero
#
# Operador		Verdad (TRUE) si:
# ------------------------------------------
# -d fichero		fichero existe y es un directorio
# -e fichero		fichero existe
# -f fichero		fichero existe y es un fichero regular (no un
#
# directorio, u otro tipo de fichero especial)
#
# -r fichero		Tienes permiso de lectura en fichero
# -s fichero		fichero existe y no esta vacio
# -w fichero		Tienes permiso de escritura en fichero
# -x fichero		Tienes permiso de ejecucion en fichero (o de busqueda si es un directorio)
#
# -O fichero		Eres el dueño del fichero
# -G fichero		El grupo del fichero es igual al tuyo.
#
# fichero1 -nt fichero2	fichero1 es mas reciente que fichero2
# fichero1 -ot fichero2	fichero1 es mas antiguo que fichero2

# Operadores aritméticos
# + 	suma
# - 	resta
# /* 	multiplicación
# / 	división
# % 	resto
# ** 	potenciación

# Los operadores aritméticos pueden combinarse con la asignación de variables, al estilo de C:
#
# += 	le suma un valor a la variable
# -= 	le resta un valor a la variable
# *= 	le multiplica por un valor a la variable
# /= 	le divide por un valor a la varaible
# %= 	asigna a la variable el resto de dividir esa variable por un valor

: ' Operadores booleanos

 << 	desplazamiento de 1 bit hacia la izquierda que equivale a multiplicar por 2
 >> 	desplazamiento de 1 bit hacia la derecha, que equivale a dividir por 2.
 <<= 	desplazamiento de 2 bits hacia la izquierda que equivale a multiplicar por 4.
 >>= 	desplazamiento de 2 bits hacia la derecha, que equivale a dividir por 4.
 & 	operación and
 | 	operación or
 ^ 	operador xor
 ! 	operador de negación (NOT)
'

# Operadores lógicos
#
# == 	operador binario que devuelve "verdadero" si las expresiones son verdaderas
# && 	operador binario que devuelve verdadero si ambas expresiones son verdaderas, en otros casos devuelve falso.
# || 	operador binario que devuelve verdadero si al menos una de las expresiones es verdadera.

####################
# condiciones if else
####################

echo ' Adivina el valor numerico de la variable'
read A

if [ $A = 1 ]; then
    echo 'Has acertado'
    exit 0
else
    if [ $A = 2 ]; then
        echo 'Estuviste cerca'
    else
        echo 'Erraste'
    fi
fi

####################
# condiciones case esac
####################

#con un solo valor
read x
case $x in
     1)
        echo "uno"
     ;;
     2)
        echo "dos"
     ;;
     *)
        echo "no se qué numero es"
     ;;
esac

#con mas de un valor
read opcion
  case $opcion in
      s|S)
         echo "pulso la opción SI"
      ;;
      n|N)
         echo "pulso la opción NO"
      ;;
      *)
         echo "desconozco esa opción"
      ;;
  esac

####################
# bucle for
####################

#con una serie de valores
for variable in 1 2 3 4 5 6 7 8 9 10;
do
    echo Este es el número: $numero;
done

#con un rango numerico
for variable in {1..10};
do
    echo Este es el número: $numero;
done

#con el resultado de un comando
for VARIABLE in $(ls /bin | grep -E 'c.[aeiou]');
do
    echo $VARIABLE;
done

####################
# bucle while
####################

NUM=0

while [ $NUM -le 10 ]; do
    echo "\$NUM: $NUM"
    let NUM=$NUM+1
done

####################
# bucle until
####################

limite=5
i=10;

until [ $limite -gt $i ]
do
     echo Acción $i ejecutada
     let i=$i-1
done

####################
# sentencia select
####################

select OPCION in "A" "B" "C"
do
  if [ $OPCION = "B" ]; then
      echo "Opcion elegida: $OPCION"
      break
  else
      echo "Opcion no valida"
  fi
done

####################
# funciones
####################

# declaracion
function limpiarPantalla {
  clear
}

function listarETC  {
  ls /etc
}

function crearDirectorio {
  mkdir directorio
}

# invocar funciones.
read opcion
case $opcion in
  b|B)
     limpiarPantalla
  ;;
  l|L)
     listarETC
  ;;
  c|C)
     crearDirectorio ;;
esac


####################
# paso de parametros
####################

# se ejecuta hasi. bash ./parámetros.sh primero segundo
echo "El nombre del fichero en ejecución es: $0"
echo "El primer parámetro es: $1"
echo "El segundo parámetro es: $2"
echo "Los parámetros son: $*"
echo "La cantidad de parámetros pasados es de $# parámetros"
exit 0