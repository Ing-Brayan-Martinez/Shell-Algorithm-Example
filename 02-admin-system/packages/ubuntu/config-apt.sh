#!/usr/bin/env bash

#liberar proceso de instalacion de paquetes
sudo fuser -vki  /var/lib/dpkg/lock

#ver lista de paquetes actulizables
sudo apt list --upgradable

#ver lista de paquetes instalados
sudo apt list --installed

#para borrar un paquete corrupto
sudo dpkg --purge --force-all squid3

#para saber las dependencias de un paquete
apt-cache depends vim

#sobre escribir un paquete
sudo apt -o Dpkg::Options::="--force-overwrite" install openjdk-9-jdk

#rutas del sistema
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

#ver el contenido de un archivo.
cat archivo.txt

#insertar al final de un archivo.
sed -i '$a Aqui el texto que ira en la ultima linea' archivo.txt

# esto sirve para invocar programas como super usuario desde el modo grafico
gksudo gedit

#Comprobar si hay una nueva versión de Ubuntu
#No hay una versión de desarrollo de una LTS disponible.
#Para actualizar al último lanzamiento de desarrollo sin LTS
#defina «Prompt=normal» en /etc/update-manager/release-upgrades.
