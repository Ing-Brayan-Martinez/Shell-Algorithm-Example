#!/usr/bin/env bash

#https://linuxapt.com/blog/161-find-out-which-groups-a-user-belongs-to-in-ubuntu-20-04
#https://linuxwizardry.com/how-to-manage-users-and-groups-on-ubuntu-22-04/
#https://eltallerdelbit.com/usuarios-grupos-linux/

# Añadir un usuario
sudo adduser henry

# Iniciar seccion en el nuevo usuario para verificar
su - henry

# para saber que usuario esta activo (henry)
whoami

# para saber que usuarios hay en el sistema
# el archivo /etc/passwd : en este archivo podemos ver todos los usuarios creados, sus UID y sus GID.
cat /etc/passwd

# para saber exactamente las contrasena del usuario henry
grep henry /etc/passwd

# el archivo /etc/shadow : En este archivo se encuentran cifradas las contraseñas de los usuarios.
cat /etc/shadow

# modificar el usuario henry ahora se llama james
sudo usermod -l james henry

# modificar el user id del usuario
sudo usermod -u 4567 james

# saber el id de un usuario
id -u james

# modificar el grupo primario al que pertenece el usuario
sudo usermod -g linuxwizardry james

# modificar los grupos secundario al que pertenece el usuario
sudo usermod -G linuxwizardry james

# modificar el usuario para perteneser a grupos administradores
sudo usermod -aG sudo james

# saber a que grupo pertenece el usuario
id james

# cambiar la contrasena del usuario
sudo passwd james

# aliminar un usuario
sudo userdel james

# aliminar un usuario junto con todos sus archivos
sudo userdel -r james

# crear un nuevo grupo
sudo addgroup computer

# o asi
sudo groupadd computer

# para saber los grupos
# el archivo /etc/group : En este archivo podemos ver los GID de los grupos existentes en el sistema, y los usuarios pertenecientes a cada grupo.
cat /etc/group

# crear un nuevo grupo del sistema
sudo groupadd -r sysmin

# crear un nuevo grupo espesificando su id
sudo groupadd -g 644 bank

# verificar un grupo concreto
grep bank /etc/group

# eliminar usuario de un grupo
sudo deluser rohan bank

# o asi
sudo gpasswd -d rohan bank

# eliminar un grupo.
sudo delgroup ubuntu

# saber que personas pertenecen a un grupo
getent group bank

# permite saber en que grupos esta incluido el usuario rohan
groups rohan

# Modificar un grupo
groupmod

