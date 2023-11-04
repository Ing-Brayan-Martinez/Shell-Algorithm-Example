#!/bin/bash

#mostrar archivo
cat /etc/apache2/apache2.conf

#Confgurar para que sea visible por apache2
sudo gedit /etc/apache2/apache2.conf

#Agregar en el archivo abierto.
Include /etc/phpmyadmin/apache.conf

#verificar sintaxis de confguracion de apache.
sudo apache2ctl configtest

#Reiniciar apache2
sudo service apache2 restart

#Verificar phpmyadmin.
chromium-browser http://localhost/phpmyadmin