#!/bin/bash
##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  apache2/install.sh 
##   Description:  Este script instalará y configurará un servidor apache
##                 en Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  -- 
##          Bugs:  --
##=================================================================================


#instalar apache
sudo apt -y install apache2 &&

#verificar firewall
sudo ufw app list &&

#verificar firewall full
sudo ufw app info "Apache Full" &&

#Avilitar trafico.
sudo ufw allow in "Apache Full" &&

#verificar configuraciones
sudo apache2ctl configtest &&

#establecer permisos en el directorio del dominio
sudo chmod -R 777 /var/www/html &&

#provar apache2
firefox http://localhost 