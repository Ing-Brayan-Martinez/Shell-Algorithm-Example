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

#para vlc
sudo add-apt-repository -y ppa:videolan/master-daily &&

#para libreoffice
sudo add-apt-repository -y ppa:libreoffice/ppa &&

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


## instalar todo.

sudo apt -y install docker-ce &&

sudo apt -y install rhythmbox &&

sudo apt -y install tree &&

sudo apt -y install totem* &&

sudo apt -y install cheese* &&

sudo apt -y install variety &&

sudo apt -y install software-center &&

sudo apt -y install brasero &&

sudo apt -y install sound-juicer &&

sudo apt -y install git &&

sudo apt -y install gtkorphan && 

sudo apt -y install chromium-browser && 

sudo apt -y install unity-tweak-tool &&

sudo apt -y install vlc &&

sudo apt -y install libreoffice &&

sudo apt -y install pulseaudio-equalizer &&

sudo apt -y install synaptic &&

sudo apt -y install qbittorrent &&

#sudo apt -y install openjdk-11-jdk openjdk-11-jdk-headless openjdk-11-jre openjdk-11-jre-headless &&

#sudo apt -y install openjdk-8-jdk openjdk-8-jdk-headless openjdk-8-jre openjdk-8-jre-headless &&

sudo apt -y install zulu-6 zulu-7 zulu-8 zulu-9 zulu-10 zulu-11 zulu-12 zulu-13 &&

sudo apt -y install maven &&

sudo apt -y install pgadmin3 &&

sudo apt -y install gparted &&

sudo apt -y install --only-upgrade firefox &&

sudo apt -y install bleachbit &&

sudo apt -y install gnome-nettool &&

sudo apt -y install putty &&

sudo apt -y install filezilla &&

sudo apt -y install wine &&

sudo apt -y install furiusisomount &&

sudo apt -y install rar &&

sudo apt -y install cinnamon &&

sudo apt -y install ubuntu-restricted-extras &&

sudo apt -y autoremove &&

sudo apt list --upgradable

#sudo apt -y upgrade
