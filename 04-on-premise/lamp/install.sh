#!/bin/bash
##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  lamp/ubuntu-old-install.sh
##   Description:  Este script instalará y configurará LAMP
##                 en Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  --
##          Bugs:  --
##=================================================================================



sudo add-apt-repository -y ppa:ondrej/php;


sudo apt update;


sudo apt -y install apache2;


sudo apt -y install mysql-server mysql-client;


sudo apt -y install php8.5 php8.5-dev php8.5-cli php8.5-fpm php8.5-cgi \
    php8.5-bcmath php8.5-bz2 php8.5-curl php8.5-dba php8.5-enchant php8.5-gd \
    php8.5-gmp php8.5-imap php8.5-interbase php8.5-intl php8.5-ldap \
    php8.5-mbstring php8.5-mcrypt php8.5-mysql php8.5-odbc php8.5-pgsql \
    php8.5-pspell php8.5-readline php8.5-snmp php8.5-soap php8.5-sqlite3 \
    php8.5-sybase php8.5-tidy php8.5-xmlrpc php8.5-xsl php8.5-zip php8.5-common php8.5-xml \
    php8.5-phpdbg libapache2-mod-php8.5 php8.5-amqp php8.5-apcu php8.5-ast php8.5-decimal php8.5-dio \
    php8.5-ds php8.5-excimer php8.5-gearman php8.5-gnupg php8.5-grpc php8.5-http \
    php8.5-igbinary php8.5-imagick php8.5-inotify php8.5-litespeed php8.5-lz4 php8.5-mailparse \
    php8.5-maxminddb php8.5-memcache php8.5-memcached php8.5-mongodb php8.5-msgpack php8.5-oauth \
    php8.5-opentelemetry php8.5-pcov php8.5-pq php8.5-protobuf php8.5-ps php8.5-psr php8.5-raphf \
    php8.5-rdkafka php8.5-redis php8.5-rrd php8.5-smbclient php8.5-solr php8.5-sqlsrv php8.5-ssh2 \
    php8.5-stomp php8.5-swoole php8.5-sybase php8.5-uopz php8.5-uploadprogress php8.5-uuid php8.5-vips\
    php8.5-xdebug php8.5-xhprof php8.5-xlswriter php8.5-yaml php8.5-yaml php8.5-zstd;


sudo apt -y install php8.5-gmagick php8.5-yac php8.5-zmq;


sudo apt -y install phpmyadmin;


sudo sed -i '$a Include /etc/phpmyadmin/apache.conf' /etc/apache2/apache2.conf;


sudo apache2ctl configtest;


sudo service apache2 restart;


firefox http://localhost/phpmyadmin;

