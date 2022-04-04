#!/usr/bin/env bash

##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  ubuntu/install.sh
##   Description:  Este script instalará y configurará la distribucion de linux
##                 Ubuntu 18.04 LTS instalacion minimal.
##   Requirement:  --
##          Note:  --
##          Bugs:  --
##=================================================================================


## repositorios.

#para vlc
sudo add-apt-repository -y ppa:videolan/master-daily &&

#para libreoffice
sudo add-apt-repository -y ppa:libreoffice/ppa &&


## actualizar paqueteria.
sudo apt update &&


## instalar los paquetes necesarios.

sudo apt -y install putty &&

sudo apt -y install filezilla &&

#sudo apt -y install openjdk-11-jdk openjdk-11-jdk-headless openjdk-11-jre openjdk-11-jre-headless &&

#sudo apt -y install openjdk-8-jdk openjdk-8-jdk-headless openjdk-8-jre openjdk-8-jre-headless &&

sudo apt -y install libreoffice &&

sudo apt -y install wine64 &&

sudo apt -y install transmageddon &&

sudo apt -y install pgadmin3 &&

sudo apt -y install chromium-browser &&

sudo apt -y install vlc &&

sudo apt -y install brasero &&

sudo apt -y install sound-juicer &&

sudo apt -y install furiusisomount &&

sudo apt -y install unity-tweak-tool &&
