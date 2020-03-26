#!/usr/bin/env bash

#activar corta fuego
sudo ufw allow 27017 &&
sudo ufw enable &&
sudo ufw status

#instalar el servicio
sudo docker pull mongo

sudo docker pull mongo:4.0.4

#verificar si se instalo la imagen
sudo docker images

#correr la imagen
sudo docker run -d -p 27017:27017 --name mongodb mongo:4.0.4


#probar la imagen
sudo docker exec -it mongodb bash

# entrar para crear cliente
mongo

#se debe crear el usuario para accesar con autenticacion
mongo -u admin -p 12345678 --authenticationDatabase admin


#saber que puertos estan siendo usados
sudo netstat -plntu

#para instalar el cliente
sudo apt install mongodb-clients

#saber si esta arriba la base de datos
mongo --eval 'db.runCommand({ connectionStatus: 1 })' &&
