#!/usr/bin/env bash

#activar corta fuego
udo ufw allow 15672 &&
sudo ufw allow 25672 &&
sudo ufw allow 5672 &&
sudo ufw allow 5671 &&
sudo ufw allow 4369 &&
sudo ufw enable &&
sudo ufw status

#instalar el servicio
sudo docker pull rabbitmq

sudo docker pull rabbitmq:3.8.3

#verificar si se instalo la imagen
sudo docker images


#correr la imagen
sudo docker run -d -p 4369:4369 -p 5671:5671 -p 5672:5672 -p 25672:25672 -p 15672:15672 \
    --hostname rabbitmq --name rabbitmq rabbitmq:3.8.3

#activar los plugin para la UI
sudo docker container exec -it rabbitmq rabbitmq-plugins enable rabbitmq_management

# http://localhost:15672

#username: guest

#password: guest

#probar la imagen
sudo docker exec -it rabbitmq bash


#volver arrancar la imagen
sudo docker restart rabbitmq
