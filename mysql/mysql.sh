############### mySQL ##################

#Instalar mySQL.
sudo apt -y install mysql-server mysql-client

#Crear su propia base de datos.
sudo mysql_install_db

#Configuraciones de seguridad.
mysql_secure_installation

#Entrar a mySQL para verifical.
mysql -u root -p

#Eliminar mySQL.
sudo apt purge mysql-server mysql-client && sudo apt autoremove