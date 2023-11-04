#!/usr/bin/env bash

#activar corta fuego
sudo ufw allow 5432 &&
sudo ufw enable &&
sudo ufw status

#instalar el servicio
sudo docker pull postgres

sudo docker pull postgres:12.2

#verificar si se instalo la imagen
sudo docker images

#correr la imagen
sudo docker run -d -p 5432:5432 -e POSTGRES_PASSWORD=postgres \
    --hostname postgresql --name postgresql postgres:12.2

 #probar la imagen
sudo docker exec -it postgresql bash

#ejecutar comando con la base de datos
psql -h localhost -U postgres


#volver arrancar la imagen
sudo docker restart postgresql
