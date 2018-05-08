
##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  ubuntu/install.sh 
##   Description:  Este script instalará y configurará la distribucion de linux
##                 Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  -- 
##          Bugs:  --
##=================================================================================


## repositorios.

#para vlc
sudo add-apt-repository -y ppa:videolan/master-daily &&

#para libreoffice
sudo add-apt-repository -y ppa:libreoffice/ppa &&

#para pulseaudio-equalizer
sudo add-apt-repository -y ppa:nilarimogard/webupd8 &&

#para qbittorrent
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable &&

#para telegram
sudo add-apt-repository -y ppa:atareao/telegram &&

#para php
sudo add-apt-repository -y ppa:ondrej/php &&

#para ubuntu make
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make &&

#para intellij
sudo add-apt-repository -y ppa:mmk2410/intellij-idea-community &&

#para dart
sudo apt -y install apt-transport-https &&
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' &&
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list' &&

#para nodejs
sudo apt -y install curl &&
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - &&


## actualizar paqueteria.
sudo apt update &&


## borrar apps de fabrica.
sudo apt -y purge --auto-remove aisleriot &&

sudo apt -y purge --auto-remove gnome-sudoku &&

sudo apt -y purge --auto-remove mahjongg &&

sudo apt -y purge --auto-remove ace-of-penguins &&

sudo apt -y purge --auto-remove gnomine &&

sudo apt -y purge --auto-remove gbrainy &&

sudo apt -y purge --auto-remove imagemagick &&

sudo apt -y purge --auto-remove remmina remmina-plugin-rdp libfreerdp-plugins-standard &&

sudo apt -y purge --auto-remove transmission-gtk transmission-cli transmission-common transmission-daemon &&

sudo apt -y purge --auto-remove shotwell shotwell-common

sudo apt -y purge --auto-remove libreoffice


## instalar todo.

sudo apt -y install dart &&

sudo apt -y install ubuntu-make &&

sudo apt -y install intellij-idea-community &&

sudo apt -y install software-center &&

sudo apt -y install brasero &&

sudo apt -y install sound-juicer &&

sudo apt -y install git &&

sudo apt -y install gim &&

sudo apt -y install openjdk-8-jdk openjdk-8-jre openjdk-9-jdk openjdk-9-jre maven &&

sudo apt -y install gtkorphan && 

sudo apt -y install chromium-browser && 

sudo apt -y install unity-tweak-tool &&

sudo apt -y install vlc &&

sudo apt -y install libreoffice &&

sudo apt -y install ubuntu-restricted-extras &&

sudo apt -y install pulseaudio-equalizer &&

sudo apt -y install synaptic &&

sudo apt -y install apache2 &&

sudo apt -y install mysql-server mysql-client &&

sudo apt -y install php7.1 php7.1-dev php7.1-cli php7.1-fpm php7.1-cgi \
    php7.1-bcmath php7.1-bz2 php7.1-curl php7.1-dba php7.1-enchant php7.1-gd \
    php7.1-gmp php7.1-imap php7.1-interbase php7.1-intl php7.1-json php7.1-ldap \
    php7.1-mbstring php7.1-mcrypt php7.1-mysql php7.1-odbc php7.1-opcache php7.1-pgsql \
    php7.1-pspell php7.1-readline php7.1-recode php7.1-snmp php7.1-soap php7.1-sqlite3 \
    php7.1-sybase php7.1-tidy php7.1-xmlrpc php7.1-xsl php7.1-zip php7.1-common php7.1-xml \
    php7.1-phpdbg libapache2-mod-php7.1 &&

sudo apt -y install phpmyadmin &&

sudo apt -y install qbittorrent &&

sudo apt -y install telegram-cli &&

sudo apt -y install erlang &&

sudo apt -y install nodejs &&

sudo apt -y autoremove &&

sudo apt -y upgrade
