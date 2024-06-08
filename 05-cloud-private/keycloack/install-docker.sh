#!/usr/bin/env bash


#instalar el servicio
sudo docker pull keycloak/keycloak


#verificar si se instalo la imagen
sudo docker images

#correr la imagen
sudo docker run -d -p 8080:8080 \
    -e KEYCLOAK_ADMIN=admin \
    -e KEYCLOAK_ADMIN_PASSWORD=admin \
    --hostname keycloak \
    --name keycloak keycloak/keycloak:latest start-dev


#volver arrancar la imagen
sudo docker restart keycloak/keycloak
