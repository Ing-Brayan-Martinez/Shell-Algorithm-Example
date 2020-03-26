#!/usr/bin/env bash

#activar corta fuego
sudo ufw allow 5430 &&
sudo ufw enable &&
sudo ufw status

#instalar el servicio
sudo docker pull dpage/pgadmin4

sudo docker pull dpage/pgadmin4:4.19

#verificar si se instalo la imagen
sudo docker images

#correr la imagen
sudo docker run -d -p 5430:80 \
    -e 'PGADMIN_DEFAULT_EMAIL=brayanmartinez827@gmail.com' \
    -e 'PGADMIN_DEFAULT_PASSWORD=postgres' \
    --name pgadmin4 dpage/pgadmin4:4.19


#https://hub.docker.com/r/dpage/pgadmin4/tags
#https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html


#volver arrancar la imagen
sudo docker restart pgadmin4
