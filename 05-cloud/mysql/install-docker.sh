#!/usr/bin/env bash

#activar corta fuego
sudo ufw allow 33060 &&
sudo ufw allow 3306 &&
sudo ufw enable &&
sudo ufw status

#instalar el servicio
sudo docker pull mysql

sudo docker pull mysql:8.0.19

#verificar si se instalo la imagen
sudo docker images

#correr la imagen
sudo docker run -d -p 3306:3306 -p 33060:33060 -e MYSQL_ROOT_PASSWORD=12345678 \
    --hostname mysql --name mysql mysql:8.0.19

 #probar la imagen
sudo docker exec -it mysql bash

#ejecutar comando con la base de datos
mysql -h mysql -u root -p


#volver arrancar la imagen
sudo docker restart mysql
