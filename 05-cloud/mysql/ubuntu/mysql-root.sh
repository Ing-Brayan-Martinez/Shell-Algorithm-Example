#!/usr/bin/env bash

#saber si esta corriendo
service --status-all

#abrir la consola de mysql
sudo mysql -u root

#Query para Cambio de Password en MySQL
UPDATE mysql.user 
SET authentication_string=PASSWORD('12345678'), plugin='mysql_native_password' 
WHERE User='root' AND Host='localhost';

#reiniciar el servicio.
sudo service mysql restart
