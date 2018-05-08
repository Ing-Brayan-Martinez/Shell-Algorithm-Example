#!/bin/bash
##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  java/install.sh 
##   Description:  Este script instalará y configurará la Maquina virtual java-jre,
##                 el kit desarrollo java-jdk y el gesto de dependencia Apache Maven
##                 en Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  -- 
##          Bugs:  --
##=================================================================================

#instala todas la plataforma java para todas las aplicacions y dasarrrollo.

sudo apt -y install openjdk-8-jdk openjdk-8-jre openjdk-9-jdk openjdk-9-jre maven &&

sudo apt -y autoremove




