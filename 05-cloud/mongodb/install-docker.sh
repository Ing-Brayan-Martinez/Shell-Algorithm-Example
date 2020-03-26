#!/usr/bin/env bash

#activar corta fuego
sudo ufw allow 27017 &&
sudo ufw enable &&
sudo ufw status

#instalar el servicio
sudo docker pull mongo

sudo docker pull mongo:4.2.3

#verificar si se instalo la imagen
sudo docker images

#correr la imagen
sudo docker run -d -p 27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME=admin \
    -e MONGO_INITDB_ROOT_PASSWORD=12345678 \
    --hostname mongodb --name mongodb mongo:4.2.3

#probar la imagen
sudo docker exec -it mongodb bash

#se debe crear el usuario para accesar con autenticacion
mongo -u admin -p 12345678 --authenticationDatabase admin


#volver arrancar la imagen
sudo docker restart mongodb

