#!/usr/bin/env bash

##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  gitlab/ubuntu-old-install.sh
##   Description:  Este script instalará y configurará un servidor gitlab
##                 en Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  --
##          Bugs:  --
##=================================================================================


sudo apt-get install -y curl openssh-server ca-certificates &&

sudo apt-get install -y postfix &&

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash &&

sudo EXTERNAL_URL="http://gitlab.example.com" apt -y install gitlab-ee &&

sudo gitlab-ctl reconfigure



