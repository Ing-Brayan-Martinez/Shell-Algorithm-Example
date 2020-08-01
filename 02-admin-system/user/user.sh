#!/usr/bin/env bash


#https://eltallerdelbit.com/usuarios-grupos-linux/

#Añadir un usuario
useradd

#Modificar un usuario
usermod

#Eliminar un usuario
userdel

#Añadir un grupo
groupadd

#Modificar un grupo
groupmod

#Eliminar un grupo.
groupdel

#el archivo /etc/passwd : en este archivo podemos ver todos los usuarios creados, sus UID y sus GID.
#el archivo /etc/group : En este archivo podemos ver los GID de los grupos existentes en el sistema, y los usuarios pertenecientes a cada grupo.
#el archivo /etc/shadow : En este archivo se encuentran cifradas las contraseñas de los usuarios.


#para saber que usuarios hay en el sistema

cat /etc/passwd

#para saber los grupos

cat /etc/group
