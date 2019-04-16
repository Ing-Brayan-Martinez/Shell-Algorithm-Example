#!/usr/bin/env bash

#Create scheme
mysql --user=root --password="" --execute="CREATE DATABASE myblog" --verbose

#Restore database
mysql --user=root --password="" --database=myblog --verbose < bitnami_wordpress.sql

#Backup database
mysqldump --user=root --password="" --verbose bitnami_wordpress > bitnami_wordpress.sql

#https://dev.mysql.com/doc/refman/8.0/en/mysql-command-options.html