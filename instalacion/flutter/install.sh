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

sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

sudo apt update &&


sudo apt -y install dart


#declarar variable

#Android
export ANDROID_HOME="/home/administrador/Android/Sdk"

#Java
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

export PATH=$PATH:$JAVA_HOME:"/bin"

#Maven
export M2_HOME="/usr/share/maven"

export PATH=$PATH:$M2_HOME:"/bin"

#Flutter
export FLUTTER_HOME="/opt/flutter"

export PATH=$PATH:$FLUTTER_HOME"/bin"

#Dart
export DART_HOME="/usr/lib/dart"

export PATH=$PATH:$DART_HOME"/bin"


# verificar que la instalcion de flutter
flutter doctor

# aceptar la lincencia
flutter doctor --android-licenses







