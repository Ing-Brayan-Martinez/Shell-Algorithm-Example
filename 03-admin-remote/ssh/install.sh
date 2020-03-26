#!/usr/bin/env bash

##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  ssh/install.sh 
##   Description:  Este script instalará y configurará la distribucion de linux
##                 Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  -- 
##          Bugs:  --
##=================================================================================

#instalar el servicio
sudo apt -Y install openssh-server &&

#verificar el servicio
sudo systemctl status ssh &&

#activar corta fuego
sudo ufw allow ssh &&
sudo ufw enable &&
sudo ufw status
