#Instalar php5.6 solamente.
sudo apt -y install php5.6 php5.6-dev php5.6-cli php5.6-fpm php5.6-cgi \
    php5.6-bcmath php5.6-bz2 php5.6-curl php5.6-dba php5.6-enchant php5.6-gd \
    php5.6-gmp php5.6-imap php5.6-interbase php5.6-intl php5.6-json php5.6-ldap \
    php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-odbc php5.6-opcache php5.6-pgsql \
    php5.6-pspell php5.6-readline php5.6-recode php5.6-snmp php5.6-soap php5.6-sqlite3 \
    php5.6-sybase php5.6-tidy php5.6-xmlrpc php5.6-xsl php5.6-zip php5.6-common php5.6-xml \
    php5.6-phpdbg libapache2-mod-php5.6

sudo apt purge php5.6 php5.6-dev php5.6-cli php5.6-fpm php5.6-cgi php5.6-bcmath php5.6-bz2 \
    php5.6-curl php5.6-dba php5.6-enchant php5.6-gd php5.6-gmp php5.6-imap php5.6-interbase \
    php5.6-intl php5.6-json php5.6-ldap php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-odbc \
    php5.6-opcache php5.6-pgsql php5.6-pspell php5.6-readline php5.6-recode php5.6-snmp php5.6-soap \
    php5.6-sqlite3 php5.6-sybase php5.6-tidy php5.6-xmlrpc php5.6-xsl php5.6-zip php5.6-common \
    php5.6-xml php5.6-phpdbg libapache2-mod-php5.6 && sudo apt autoremove
