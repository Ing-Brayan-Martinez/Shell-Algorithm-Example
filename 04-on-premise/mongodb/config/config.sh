#!/usr/bin/env bash


#saber que puertos estan siendo usados
sudo netstat -plntu

#para instalar el cliente
sudo apt install mongodb-clients

#saber si esta arriba la base de datos
mongo --eval 'db.runCommand({ connectionStatus: 1 })' &&
