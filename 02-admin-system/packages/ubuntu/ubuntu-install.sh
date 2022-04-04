#!/usr/bin/env bash

##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  ubuntu/install.sh
##   Description:  Este script instalará y configurará la distribucion de linux
##                 Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  --
##          Bugs:  --
##=================================================================================


## repositorios.

#para cinnamon
sudo add-apt-repository -y ppa:embrosyn/cinnamon &&

#para pulseaudio-equalizer
sudo add-apt-repository -y ppa:nilarimogard/webupd8 &&

#para qbittorrent
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable &&

#para java
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 &&
sudo apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'

#para variety
sudo add-apt-repository -y ppa:peterlevi/ppa &&

#para docker
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&



## actualizar paqueteria.
sudo apt update &&


## borrar apps de fabrica.
sudo apt -y purge --auto-remove aisleriot &&

sudo apt -y purge --auto-remove gnome-sudoku &&

sudo apt -y purge --auto-remove mahjongg &&

sudo apt -y purge --auto-remove ace-of-penguins &&

sudo apt -y purge --auto-remove gnome-mines &&

sudo apt -y purge --auto-remove gnome-mahjongg &&

sudo apt -y purge --auto-remove gbrainy &&

sudo apt -y purge --auto-remove remmina* &&

sudo apt -y purge --auto-remove transmission* &&

sudo apt -y purge --auto-remove shotwell* &&

sudo apt -y purge --auto-remove imagemagick* &&

sudo apt -y purge --auto-remove libreoffice &&


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

sudo apt -y install gtkorphan &&

sudo apt -y install synaptic &&

sudo apt -y install gparted &&

sudo apt -y install bleachbit &&

sudo apt -y install gnome-nettool &&

sudo apt -y install git &&

sudo apt -y install zulu-17 &&

sudo apt -y install maven &&

sudo apt -y install docker-ce &&

sudo apt -y install cinnamon &&


sudo apt list --upgradable

#sudo apt -y upgrade
