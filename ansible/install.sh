##=================================================================================
##       Project:  Shell-Script-Demo
##        Author:  Ing Brayan Martinez
##       Created:  07.05.2018 20:10:01
##       Version:  1.0.0
##    Repository:  https://github.com/Ing-Brayan-Martinez/Shell-Script-Demo.git
##          File:  ansible/install.sh 
##   Description:  Este script instalará y configurará Ansible.
##   Requirement:  --
##          Note:  -- 
##          Bugs:  --
##=================================================================================
 


sudo apt-add-repository -y ppa:ansible/ansible &&

sudo apt update &&

sudo apt -y install software-properties-common &&

sudo apt -y install ansible
