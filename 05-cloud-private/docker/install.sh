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



#referencia: https://docs.docker.com/engine/install/ubuntu/


#Para instalar los repositorios


#Update the apt package index and install packages to allow apt to use a repository over HTTPS:

 sudo apt-get update

 sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release


#Add Docker’s official GPG key:

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Use the following command to set up the stable repository. To add the nightly or test repository,
# add the word nightly or test (or both) after the word stable in the commands below

 echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


#Para instalar docker

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io


#Para probar docker

sudo docker run hello-world


#Para configurar docker para que arranque con el sistema operativo



#desplegar el demonio de docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

#verificar el demonio de docker
sudo systemctl status docker.service
sudo systemctl status containerd.service
