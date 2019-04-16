#!/usr/bin/env bash

#Configurar.
sudo gedit /etc/mysql/mysql.conf.d/mysqld.cnf
bind-address = 0.0.0.0

#Reiniciar el servicio
sudo service mysql restart

#verificar puerto.
sudo netstat -ltnp | grep mysql

#generar usuario para que sea visto desde cualquier host
mysql -u root -p

CREATE USER 'workbench'@'%' IDENTIFIED BY '12345678';

USE intranet;

GRANT ALL ON intranet TO 'workbench'@'%';

FLUSH PRIVILEGES;

