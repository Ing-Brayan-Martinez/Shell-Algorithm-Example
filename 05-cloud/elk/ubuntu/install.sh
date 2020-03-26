#!/usr/bin/env bash

##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  elk/install.sh 
##   Description:  Este script instalará y configurará el stack elk compuesto por
##                 elasticsearch, logstash y kibana.
##   Requirement:  --
##          Note:  -- 
##          Bugs:  --
##=================================================================================


#via .deb
wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.3.1/elasticsearch-2.3.1.deb
sudo dpkg -i elasticsearch-2.3.1.deb
sudo systemctl enable elasticsearch.service

#via apt ubuntu
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
sudo apt-get update && 
sudo apt-get install elasticsearch
sudo systemctl enable elasticsearch.service


#https://www.elastic.co/guide/en/elasticsearch/reference/current/deb.html
#https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-elasticsearch-on-ubuntu-16-04
#https://www.rosehosting.com/blog/install-and-configure-the-elk-stack-on-ubuntu-16-04/
#https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-logstash-and-kibana-elk-stack-on-ubuntu-14-04


