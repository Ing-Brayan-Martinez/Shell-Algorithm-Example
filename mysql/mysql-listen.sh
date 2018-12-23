

sudo gedit /etc/mysql/mysql.conf.d/mysqld.cnf

bind-address = 0.0.0.0

sudo service mysql restart

sudo netstat -ltnp | grep mysql

mysql -u root -p

CREATE USER 'workbench'@'%' IDENTIFIED BY '12345678';

USE intranet;

GRANT ALL ON intranet TO 'workbench'@'%';

FLUSH PRIVILEGES;

