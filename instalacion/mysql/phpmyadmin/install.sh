#!/bin/bash

##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  lamp/install.sh 
##   Description:  Este script instalará y configurará LAMP
##                 en Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  -- 
##          Bugs:  --
##=================================================================================

#Instalar phpMyAdmin.
sudo apt -y install phpmyadmin &&

#inserta la configuracion en el servidor apache.
sudo sed -i '$a Include /etc/phpmyadmin/apache.conf' /etc/apache2/apache2.conf &&

#verificar la sintaxis de confguracion de apache.
sudo apache2ctl configtest &&

#Reiniciar apache2
sudo service apache2 restart &&

#Verificar phpmyadmin.
firefox http://localhost/phpmyadmin

