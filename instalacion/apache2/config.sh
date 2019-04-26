############## apache2 #################

#Activar SSL en apache2
sudo a2enmod ssl a2ensite default-ssl

#verificar sintaxis de confguracion de apache.
sudo apache2ctl configtest

#Configurar directorio de dominio.
sudo chmod -R 777 /var/www/html

#Verificar apache2.
chromium-browser http://localhost

#Reiniciar apache.
sudo service apache2 restart

#ver servicio de apache
sudo service --status-all

############### firewall ################

#verificar firewall
sudo ufw app list

#verificar firewall full
sudo ufw app info "Apache Full"

#Avilitar trafico.
sudo ufw allow in "Apache Full"
