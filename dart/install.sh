#!/bin/bash
##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  dart/install.sh 
##   Description:  Este script instalará y configurará la maquina virtual 
##                 del lenguaje dart en Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  -- 
##          Bugs:  --
##=================================================================================


sudo apt -y install apt-transport-https &&


sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' &&


sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list' &&


sudo apt update &&


sudo apt -y install dart 