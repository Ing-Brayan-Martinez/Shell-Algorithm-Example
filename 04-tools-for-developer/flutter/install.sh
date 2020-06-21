#!/bin/bash
##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  dart/install.sh
##   Description:  Este script instalará y configurará la maquina virtual
##                 del lenguaje dart y el SDK de flutter en Ubuntu 16.04 LTS
#                  o superior.
##   Requirement:  --
##          Note:  --
##          Bugs:  --
##=================================================================================


# Descargar flutter para linux
# https://flutter.dev/docs/get-started/install/linux

# Descargar dart para linux
# https://dart.dev/get-dart

# Descargar Intellij y Android Studio (Recuerda instalar los plug in para cada uno de flutter y dart)
# https://www.jetbrains.com/toolbox/app/

sudo apt -y install lib32stdc++6
sudo apt -y install openjdk-8-jdk openjdk-8-jre
sudo apt -y install maven
sudo apt -y install apt-transport-https &&
sudo apt -y install curl &&

sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

sudo apt update &&


sudo apt -y install dart


# declarar variable
# sudo gedit /home/brayan/.bashrc

#Java
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export PATH=$PATH:$JAVA_HOME:"/bin"

#Maven
export M2_HOME="/usr/share/maven"
export PATH=$PATH:$M2_HOME:"/bin"



#Dart
export DART_HOME="/opt/flutter/bin/cache/dart-sdk/bin"
export PATH=$PATH:$DART_HOME

#Flutter
export FLUTTER_HOME="/opt/flutter"
export PATH=$PATH:$FLUTTER_HOME"/bin"

#pub
export PATH="$PATH":"$HOME/.pub-cache/bin"

#Android
export ANDROID_HOME="/media/brayan/HDD-1TB/Android/Sdk"
export PATH=$PATH:$ANDROID_HOME"/tools":$ANDROID_HOME"/platform-tools"


# verificar que la instalcion de flutter
flutter doctor

# aceptar la lincencia
flutter doctor --android-licenses

# soportar flutter web
 flutter config --enable-web


# solucionar el problema de: kvm is requerided for android
# para instalar la kvm



# Check if your processor supports hardware virtualization in Terminal:
egrep -c '(vmx|svm)' /proc/cpuinfo

# Install cpu-checker
sudo apt install cpu-checker

# Check if your cpu supports kvm with cpu-checker
kvm-ok

# Primero instalar dependencias y reiniciar (teniendo una maquina que soporte virtualización).
sudo apt install -y qemu-kvm libvirt-bin bridge-utils

# verificar el status del demonio de virtualizacion
sudo service libvirtd status
# o
sudo systemctl status libvirtd

# reiniciamos el servicio de virtualizacion para no reiniciar el pc
sudo service libvirtd restart

# verificar las interfaces de red si se instalo correctamente (el nombre, ya sea eth0, ens0, o lo que sea:
ip a s

# verficar si nuestro usuario esta el grupo kvm
grep kvm /etc/group

# en caso de no estar lo agregamos
sudo adduser brayan kvm

# verificar la instalacion y el owner de kvm
ls -la /dev/kvm

# cambiamos los permisos y listo ya se puede virtualizar lo que sea
sudo chown brayan:kvm -R /dev/kvm
sudo chmod -R 777 /dev/kvm



#sudo apt install -y libvirt0 ubuntu-vm-builder virt-manager

# mas informacion para virtualizar
# https://mierda.tv/2018/07/18/virtualizar-kvm-y-utilizar-virt-manager-para-gestionar/
# https://www.genbeta.com/a-fondo/virtualizacion-con-kvm-virtualizacion-de-codigo-abierto
# https://blog.desdelinux.net/qemu-kvm-virt-manager-debian-redes-computadoras-las-pymes/
