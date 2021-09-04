#!/bin/bash
#packes DEV
apt install git -y && apt install composer -y && apt install docker.io -y
sudo gpasswd -a $USER docker
newgrp docker

#LAMP
apt install mysql-server-8.0 -y && apt install apache2 -y && apt install phpmyadmin -y

#sudo mysql -u root
#CREATE USER 'admin'@'localhost' IDENTIFIED BY '814172050';
#GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost';

#Up config
sudo echo "include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
sudo systemctl restart apache2.service

apt install libapache2-mod-php


wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb && sudo dpkg -i dbeaver-ce_latest_amd64.deb

wget https://dl3.cdn.filezilla-project.org/client/FileZilla_3.55.1_x86_64-linux-gnu.tar.bz2?h=OXVcRAq7FFa3osEEKEQmvw&x=1630374180 && tar -jxvf FileZilla_3.55.1_x86_64-linux-gnu.tar.bz2

apt install flameshot -y && apt install kolourpaint -y && apt install wine -y

apt install remmina -y && apt install simplescreenrecorder -y

