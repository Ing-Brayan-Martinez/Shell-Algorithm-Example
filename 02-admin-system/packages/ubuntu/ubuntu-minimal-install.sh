#!/usr/bin/env bash

##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  ubuntu/install.sh
##   Description:  Este script instalará y configurará la distribucion de linux
##                 Ubuntu 18.04 LTS instalacion minimal.
##   Requirement:  --
##          Note:  --
##          Bugs:  --
##=================================================================================


## repositorios.

#para pulseaudio-equalizer
sudo add-apt-repository -y ppa:nilarimogard/webupd8 &&

#para qbittorrent
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable &&

#para variety
sudo add-apt-repository -y ppa:peterlevi/ppa &&


## actualizar paqueteria.
sudo apt update &&


## instalar los paquetes necesarios.
sudo apt -y install ubuntu-restricted-extras &&

sudo apt -y install pulseaudio-equalizer &&

sudo apt -y install rhythmbox &&

sudo apt -y install totem* &&

sudo apt -y install cheese* &&

sudo apt -y install variety &&

sudo apt -y install qbittorrent &&

sudo apt -y install --only-upgrade firefox &&

sudo apt -y install firefox-locale-es &&

sudo apt -y install baobab &&

sudo apt -y install tree &&

sudo apt -y install rar &&

sudo apt -y install curl &&

sudo apt -y install synaptic &&

sudo apt -y install gparted &&

sudo apt -y install bleachbit &&

sudo apt -y install gnome-nettool &&

sudo apt -y install git &&

sudo apt -y install maven &&

sudo apt -y install cinnamon &&


#operaciones adicionales
sudo apt -y autoremove &&

sudo apt list --upgradable &&


#package snap
sudo snap install space &&

sudo snap install brackets --classic &&

sudo snap install code --classic &&

sudo snap install gitkraken --classic &&

sudo snap install postman &&

sudo snap install opera &&

sudo snap install brave &&

sudo snap install nordpass &&

sudo snap install trello-desktop &&

sudo snap install drawio &&

sudo snap install telegram-desktop &&

sudo snap install tradingview





