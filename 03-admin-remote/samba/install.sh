#!/usr/bin/env bash



#https://comoinstalar.me/como-instalar-samba-en-ubuntu-18-04-lts/
#https://www.solvetic.com/tutoriales/article/4018-instalar-samba-ubuntu-linux-compartir-windows-10/



#instalar el servicio
sudo apt install samba

#verificar el servicio
sudo systemctl status samba && whereis samba

#activar corta fuego
sudo ufw allow samba &&
sudo ufw enable &&
sudo ufw status

#probar demonio de samba
systemctl status smbd nmbd

#guardar configuracion original
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.orig

#cambiar configuracion
cd /etc/samba

sudo gedit smb.conf


#verficar el archivo smb.conf que esta en el repositorio


#reiniciar servicio para tomar configuracion
sudo systemctl restart nmbd.service

#probar configuracion
testparm

#asignar contrasena
sudo smbpasswd -a brayan




#para usar samba des nemo como cliente
sudo apt install nemo-share

