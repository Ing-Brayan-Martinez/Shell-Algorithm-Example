#!/bin/bash
##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  java/ubuntu-old-install.sh
##   Description:  Este script instalará y configurará la Maquina virtual java-jre,
##                 el kit desarrollo java-jdk y el gesto de dependencia Apache Maven
##                 en Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  --
##          Bugs:  --
##=================================================================================

#instala todas la plataforma java para todas las aplicacions y dasarrrollo.

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 &&
sudo apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'

sudo apt update &&

sudo apt -y install openjdk-8-jdk openjdk-8-jre &&

sudo apt -y install zulu-9 &&

sudo apt -y install zulu-10 &&

sudo apt -y install maven &&

sudo apt -y autoremove




