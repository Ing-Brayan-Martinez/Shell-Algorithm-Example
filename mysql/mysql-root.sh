
#saber si esta corriendo
service --status-all

#detener servicio.
sudo service mysql stop

#setear la configuracion de un socket temporal
sudo sed -i '$a socket = /tmp/mysql.sock' /etc/mysql/mysql.conf.d/mysqld_safe_syslog.cnf
sudo sed -i '$a nice = 0' /etc/mysql/mysql.conf.d/mysqld_safe_syslog.cnf

#modo de recuperacion de mysql
sudo mysqld_safe --skip-grant-tables &

#si no funciona usar
sudo reboot

#abrir consola mysql
sudo mysql -u root

#Query para Cambio de Password en MySQL


UPDATE mysql.user 
SET authentication_string=PASSWORD('12345678'), plugin='mysql_native_password' 
WHERE User='root' AND Host='localhost';

