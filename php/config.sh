
# Para auto cargar archivos usando composer
composer dump-autoload --optimize



############### php ####################

#Instalar el repositorio de php
sudo add-apt-repository ppa:ondrej/php &&
sudo apt-get update


#Actualizar paqueteria.
sudo apt-get update

############### Otras configuraciones de php ####################

#instalar elemtos adicionales.
sudo apt-get install php-gettext php-xdebug php-apcu pkg-php-tools php-common php-mysql dh-php php-pear
sudo apt-get install php-gettext php-xdebug php-apcu 

#Arreglar el modulo de mysql
sudo apt-get purge php7.0-mysql && sudo apt-get install php-mysql 


#Pasar de php5.6 a php7
sudo a2dismod php5.6 && sudo a2enmod php7.0 && sudo service apache2 restart


#Verificar installacion de php7
apt-cache search php7.0


############### configuraciones de indices de archivos php ####################

#Configurar el indice del servidor.
sudo gedit /etc/apache2/mods-enabled/dir.conf


#Agregar o modificar en el archivo abierto.
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>


############### ver version de php ####################

#Crear archivo de informacion.
sudo touch /var/www/html/info.php && sudo gedit /var/www/html/info.php


#Agregar en el archivo abierto.
<?php
	phpinfo();
?>

#Verificar php.
chromium-browser http://localhost/info.php

chromium-browser http://localhost/Tools/info.php

#Eliminar el archivo de verificacion.
sudo rm /var/www/html/info.php



############### mostrar errores de php ####################


#mostrar error.
sudo gedit /etc/php/5.6/apache2/php.ini
sudo gedit /etc/php/7.0/apache2/php.ini

#activar esta linea con On
display_errors = On
