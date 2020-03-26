#!/usr/bin/env bash

#activar corta fuego
sudo ufw allow 3301 &&
sudo ufw enable &&
sudo ufw status

#instalar el servicio
sudo docker pull phpmyadmin/phpmyadmin

sudo docker pull phpmyadmin/phpmyadmin:5.0.2

#verificar si se instalo la imagen
sudo docker images

#correr la imagen
sudo docker run -d -p 3301:80 \
    -e PMA_HOST=192.168.0.101 \
    -e PMA_PORT=3306 \
    -e MYSQL_ROOT_PASSWORD=12345678 \
    --hostname phpmyadmin --name phpmyadmin phpmyadmin/phpmyadmin:5.0.2

#probar la imagen
sudo docker exec -it phpmyadmin bash

