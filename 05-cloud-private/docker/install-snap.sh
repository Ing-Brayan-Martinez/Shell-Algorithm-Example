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



#instalar docker.
sudo snap install docker

#verificar todos los servicios
sudo service --status-all

#provar docker
sudo docker run hello-world


#Para configurar docker para que arranque con el sistema operativo


#desplegar el demonio de docker
sudo systemctl enable snap.docker.dockerd

#verificar el demonio de docker
sudo systemctl status snap.docker.dockerd

#para evitar problemas de permisos
sudo addgroup --system docker
sudo adduser $USER docker
sudo usermod -aG docker $USER

#para evitar problemas de acceso al filesystem
sudo snap connect docker:removable-media

#https://stackoverflow.com/questions/59662154/docker-building-issue-error-checking-context-cant-stat
