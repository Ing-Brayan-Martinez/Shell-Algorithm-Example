##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  ubuntu/install.sh 
##   Description:  Este script instalará y configurará docker en
##                 Ubuntu 16.04 LTS o superior.
##   Requirement:  --
##          Note:  -- 
##          Bugs:  --
##=================================================================================

#referencia
#https://docs.docker.com/install/linux/docker-ce/ubuntu/

#instalar complementos
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common &&

#descargar claves
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&

#agregar repositorio
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&

## actualizar paqueteria.
sudo apt update &&

#instalar docker.
sudo apt -y install docker-ce &&

#provar docker
sudo docker run hello-world &&


#agregar mi usuario al grupo docker
sudo usermod -aG docker brayan


