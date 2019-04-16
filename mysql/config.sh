#!/usr/bin/env bash

#Crear su propia base de datos.
sudo mysql_install_db

#Configuraciones de seguridad.
mysql_secure_installation

#Entrar a mySQL para verifical.
mysql -u root -p