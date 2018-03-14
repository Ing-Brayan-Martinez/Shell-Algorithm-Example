/*

@Descripcion: Instalcion del LAMP - Stack para tener una servidor local_.
@Echo por:    Ing.Brayan.Martinez.
@Echo el:     16 de Marzo del 2017.

*/






############## apache2 #################

#Instalar apache2.
sudo apt-get install apache2

#Activar SSL en apache2
sudo a2enmod ssl a2ensite default-ssl

#verificar sintaxis de confguracion de apache.
sudo apache2ctl configtest

#Configurar directorio de dominio.
sudo chmod -R 777 /var/www/html

#Verificar apache2.
chromium-browser http://localhost

#Eliminar apache2.
sudo apt-get purge apache2


############### firewall ################

#verificar firewall
sudo ufw app list

#verificar firewall full
sudo ufw app info "Apache Full"

#Avilitar trafico.
sudo ufw allow in "Apache Full"



############### mySQL ##################

#Instalar mySQL.
sudo apt-get install mysql-server mysql-client

#Crear su propia base de datos.
sudo mysql_install_db

#Configuraciones de seguridad.
mysql_secure_installation

#Entrar a mySQL para verifical.
mysql -u root -p

#Eliminar mySQL.
sudo apt-get purge mysql-server mysql-client && sudo apt-get autoremove




################ phpMyAdmin ###################

#Instalar phpMyAdmin.
sudo apt-get install phpmyadmin

#Confgurar para que sea visible por apache2
sudo gedit /etc/apache2/apache2.conf

#Agregar en el archivo abierto.
Include /etc/phpmyadmin/apache.conf

#verificar sintaxis de confguracion de apache.
sudo apache2ctl configtest

#Reiniciar apache2
sudo service apache2 restart

#Verificar phpmyadmin.
chromium-browser http://localhost/phpmyadmin

#Eliminar phpMyAdmin.
sudo apt-get purge phpmyadmin


########## mysql workbench ################

sudo apt-get install mysql-workbench

############### php ####################

#Instalar el repositorio de php7.0
sudo add-apt-repository ppa:ondrej/php &&
sudo apt-get update


#Actualizar paqueteria.
sudo apt-get update


#Instalar php5.6 solamente.
sudo apt-get install php5.6 php5.6-dev php5.6-cli php5.6-fpm php5.6-cgi php5.6-bcmath php5.6-bz2 php5.6-curl php5.6-dba php5.6-enchant php5.6-gd php5.6-gmp php5.6-imap php5.6-interbase php5.6-intl php5.6-json php5.6-ldap php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-odbc php5.6-opcache php5.6-pgsql php5.6-pspell php5.6-readline php5.6-recode php5.6-snmp php5.6-soap php5.6-sqlite3 php5.6-sybase php5.6-tidy php5.6-xmlrpc php5.6-xsl php5.6-zip php5.6-common php5.6-xml php5.6-phpdbg libapache2-mod-php5.6

sudo apt-get purge php5.6 php5.6-dev php5.6-cli php5.6-fpm php5.6-cgi php5.6-bcmath php5.6-bz2 php5.6-curl php5.6-dba php5.6-enchant php5.6-gd php5.6-gmp php5.6-imap php5.6-interbase php5.6-intl php5.6-json php5.6-ldap php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-odbc php5.6-opcache php5.6-pgsql php5.6-pspell php5.6-readline php5.6-recode php5.6-snmp php5.6-soap php5.6-sqlite3 php5.6-sybase php5.6-tidy php5.6-xmlrpc php5.6-xsl php5.6-zip php5.6-common php5.6-xml php5.6-phpdbg libapache2-mod-php5.6 && sudo apt-get autoremove


#Instalar php7.0 solamente.
sudo apt-get install php7.0 php7.0-dev php7.0-cli php7.0-fpm php7.0-cgi php7.0-bcmath php7.0-bz2 php7.0-curl php7.0-dba php7.0-enchant php7.0-gd php7.0-gmp php7.0-imap php7.0-interbase php7.0-intl php7.0-json php7.0-ldap php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-odbc php7.0-opcache php7.0-pgsql php7.0-pspell php7.0-readline php7.0-recode php7.0-snmp php7.0-soap php7.0-sqlite3 php7.0-sybase php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-zip php7.0-common php7.0-xml php7.0-phpdbg libapache2-mod-php7.0 

sudo apt-get purge php7.0 php7.0-dev php7.0-cli php7.0-fpm php7.0-cgi php7.0-bcmath php7.0-bz2 php7.0-curl php7.0-dba php7.0-enchant php7.0-gd php7.0-gmp php7.0-imap php7.0-interbase php7.0-intl php7.0-json php7.0-ldap php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-odbc php7.0-opcache php7.0-pgsql php7.0-pspell php7.0-readline php7.0-recode php7.0-snmp php7.0-soap php7.0-sqlite3 php7.0-sybase php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-zip php7.0-common php7.0-xml php7.0-phpdbg libapache2-mod-php7.0 && sudo apt-get autoremove


#Instalar php7.1 solamente.
sudo apt-get install php7.1 php7.1-dev php7.1-cli php7.1-fpm php7.1-cgi php7.1-bcmath php7.1-bz2 php7.1-curl php7.1-dba php7.1-enchant php7.1-gd php7.1-gmp php7.1-imap php7.1-interbase php7.1-intl php7.1-json php7.1-ldap php7.1-mbstring php7.1-mcrypt php7.1-mysql php7.1-odbc php7.1-opcache php7.1-pgsql php7.1-pspell php7.1-readline php7.1-recode php7.1-snmp php7.1-soap php7.1-sqlite3 php7.1-sybase php7.1-tidy php7.1-xmlrpc php7.1-xsl php7.1-zip php7.1-common php7.1-xml php7.1-phpdbg libapache2-mod-php7.1

sudo apt-get purge php7.1 php7.1-dev php7.1-cli php7.1-fpm php7.1-cgi php7.1-bcmath php7.1-bz2 php7.1-curl php7.1-dba php7.1-enchant php7.1-gd php7.1-gmp php7.1-imap php7.1-interbase php7.1-intl php7.1-json php7.1-ldap php7.1-mbstring php7.1-mcrypt php7.1-mysql php7.1-odbc php7.1-opcache php7.1-pgsql php7.1-pspell php7.1-readline php7.1-recode php7.1-snmp php7.1-soap php7.1-sqlite3 php7.1-sybase php7.1-tidy php7.1-xmlrpc php7.1-xsl php7.1-zip php7.1-common php7.1-xml php7.1-phpdbg libapache2-mod-php7.1 && sudo apt-get autoremove



#instalar elemtos adicionales.
sudo apt-get install php-gettext php-xdebug php-apcu pkg-php-tools php-common php-mysql dh-php php-pear
sudo apt-get install php-gettext php-xdebug php-apcu 

#Arreglar el modulo de mysql
sudo apt-get purge php7.0-mysql && sudo apt-get install php-mysql 


#Pasar de php5.6 a php7
sudo a2dismod php5.6 && sudo a2enmod php7.0 && sudo service apache2 restart


#Verificar installacion de php7
apt-cache search php7.0


#Configurar el indice del servidor.
sudo gedit /etc/apache2/mods-enabled/dir.conf


#Agregar o modificar en el archivo abierto.
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>


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

#mostrar error.
sudo gedit /etc/php/5.6/apache2/php.ini
sudo gedit /etc/php/7.0/apache2/php.ini

#activar esta linea con On
display_errors = On

 









