#!/bin/bash
##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  nodejs/install.sh 
##   Description:  Este script instalará y configurará la maquina virtual 
##                 de JavaScript node.js en Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  -- 
##          Bugs:  --
##=================================================================================


sudo apt -y install curl &&

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - &&

sudo apt -y install nodejs