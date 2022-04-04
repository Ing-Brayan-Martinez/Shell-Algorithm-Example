#!/usr/bin/env bash

##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  ubuntu/install.sh
##   Description:  Este script instalará y configurará docker en
##                 Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  --
##          Bugs:  --
##=================================================================================


#referencia: https://docs.docker.com/engine/install/linux-postinstall/


#para usar docker sin sudo


#crear grupo de docker, si este existe
sudo groupadd docker

#agregar mi usuario al grupo docker
sudo usermod -aG docker $USER

#cerrar y volver abrir sesion o usar el comando para poder ver los cambios
newgrp docker

docker run hello-world

#en caso de no funcionar es porque la carpeta de configuración  ~/.docker/ no
# tiene permisos
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R

sudo chmod g+rwx "$HOME/.docker" -R


#para usar docker sin sudo
