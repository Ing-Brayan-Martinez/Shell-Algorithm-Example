#instalacion de la aplicacion gitlab de escritorio.

sudo apt-get install -y curl openssh-server ca-certificates &&

sudo apt-get install -y postfix &&

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash &&

sudo EXTERNAL_URL="http://gitlab.example.com" apt -y install gitlab-ee



   
