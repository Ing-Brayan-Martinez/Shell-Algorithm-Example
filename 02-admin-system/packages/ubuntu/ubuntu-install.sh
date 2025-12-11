#!/usr/bin/env bash

##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  ubuntu/ubuntu-old-install.sh
##   Description:  Este script instalará y configurará la distribucion de linux
##                 Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  --
##          Bugs:  --
##=================================================================================


## repositorios.

# para atigravity
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://us-central1-apt.pkg.dev/doc/repo-signing-key.gpg | \
  sudo gpg --dearmor --yes -o /etc/apt/keyrings/antigravity-repo-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/antigravity-repo-key.gpg] https://us-central1-apt.pkg.dev/projects/antigravity-auto-updater-dev/ antigravity-debian main" | \
  sudo tee /etc/apt/sources.list.d/antigravity.list > /dev/null



## actualizar paqueteria.
sudo apt update;


## borrar apps de fabrica.
sudo apt -y purge --auto-remove aisleriot;

sudo apt -y purge --auto-remove gnome-sudoku;

sudo apt -y purge --auto-remove mahjongg;

sudo apt -y purge --auto-remove ace-of-penguins;

sudo apt -y purge --auto-remove gnome-mines;

sudo apt -y purge --auto-remove gnome-mahjongg;

sudo apt -y purge --auto-remove gbrainy;

sudo apt -y purge --auto-remove remmina*;

sudo apt -y purge --auto-remove transmission*;

sudo apt -y purge --auto-remove shotwell*;

sudo apt -y purge --auto-remove thunderbird*;



## instalar los paquetes necesarios.

sudo apt install antigravity

sudo apt -y install ubuntu-restricted-extras;

sudo apt -y install rhythmbox;

sudo apt -y install totem;

sudo apt -y install cheese;

sudo apt -y install qbittorrent;

sudo apt -y install baobab;

sudo apt -y install tree;

sudo apt -y install rar;

sudo apt -y install curl;

sudo apt -y install neofetch;

sudo apt -y install synaptic;

sudo apt -y install gparted;

sudo apt -y install bleachbit;

sudo apt -y install gnome-nettool;

sudo apt -y install git;


#operaciones adicionales
sudo apt -y autoremove;

sudo apt list --upgradable;


#package snap
sudo snap install code --classic;

sudo snap install gitkraken --classic;

sudo snap install postman;

sudo snap install nordpass;

sudo snap install telegram-desktop;

sudo snap install tradingview;
