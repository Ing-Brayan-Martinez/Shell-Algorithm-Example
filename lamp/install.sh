#!/bin/bash
##=================================================================================
##       Project:  PHP-Developer-Kit
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/PHP-Developer-Kit/PDK-LAMP.git
##          File:  lamp/install.sh 
##   Description:  Este script instalará y configurará LAMP
##                 en Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  -- 
##          Bugs:  --
##=================================================================================



sudo add-apt-repository -y ppa:ondrej/php &&


sudo apt update &&


sudo apt -y install apache2 &&


sudo apt -y install mysql-server mysql-client &&


sudo apt -y install php7.1 php7.1-dev php7.1-cli php7.1-fpm php7.1-cgi \
    php7.1-bcmath php7.1-bz2 php7.1-curl php7.1-dba php7.1-enchant php7.1-gd \
    php7.1-gmp php7.1-imap php7.1-interbase php7.1-intl php7.1-json php7.1-ldap \
    php7.1-mbstring php7.1-mcrypt php7.1-mysql php7.1-odbc php7.1-opcache php7.1-pgsql \
    php7.1-pspell php7.1-readline php7.1-recode php7.1-snmp php7.1-soap php7.1-sqlite3 \
    php7.1-sybase php7.1-tidy php7.1-xmlrpc php7.1-xsl php7.1-zip php7.1-common php7.1-xml \
    php7.1-phpdbg libapache2-mod-php7.1 &&


sudo apt -y install phpmyadmin

