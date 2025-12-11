#!/bin/bash
##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  jenkins/ubuntu-old-install.sh
##   Description:  Este script instalará y configurará un servidor de integracion
##                 continua, jenkins, en Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  --
##          Bugs:  --
##=================================================================================

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add - &&

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' &&

sudo apt update &&

sudo apt -y install jenkins
