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

#referencia
#https://docs.docker.com/install/linux/docker-ce/ubuntu/

#instalar docker.
sudo snap install docker

#verificar todos los servicios
sudo service --status-all

#desplegar el demonio de docker
sudo systemctl enable snap.docker.dockerd

#verificar el demonio de docker
sudo systemctl status snap.docker.dockerd

#provar docker
sudo docker run hello-world &&


#agregar mi usuario al grupo docker
sudo usermod -aG docker brayan


