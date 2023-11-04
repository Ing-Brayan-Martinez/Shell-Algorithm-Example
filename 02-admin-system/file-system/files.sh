#!/usr/bin/env bash

# crear carpeta
mkdir /folder

# crear archivo
touch file.txt

# establecer permisos a un carpeta
sudo chmod -R 777 /folder

# establecer dueno a una carpeta
sudo chown brayan:brayan /folder

# saber en que ruta de directorio estoy
pwd

# borrar un archivo
rm -f file.txt

# borrar carpeta
rm -R /folder

# listar archivos
ls -l

# listar archivos incluyendo los archivos ocultos
ls -la

# navegar hacia una carpeta
cd /folder

# ver el contenido de archivo
cat file.txt

# descomprimir archivos tar.gz
sudo tar xvzf node-v18.17.1-linux-x64.tar.gz;

# mover un archivo
sudo mv node-v18.17.1-linux-x64 /opt;

# copiar un archivo
sudo cp node-v18.17.1-linux-x64 /opt;
