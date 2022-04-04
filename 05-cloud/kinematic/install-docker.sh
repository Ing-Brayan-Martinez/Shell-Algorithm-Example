#!/usr/bin/env bash

#https://medium.com/@karthi.net/top-6-gui-tools-for-managing-docker-environments-ee2d69ba5a4f

#https://www.tothenew.com/blog/docker-kitematic-for-linux/

#https://hub.docker.com/r/jonadev95/kitematic-docker


#instalar el servicio
sudo docker pull jonadev95/kitematic-docker

#verificar si se instalo la imagen
sudo docker images

#correr la imagen
sudo docker run -d --net host --name kitematic \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY  \
    -v $HOME/.Xauthority:/root/.Xauthority \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --privileged=true jonadev95/kitematic-docker
