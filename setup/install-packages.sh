#!/bin/bash
#packes DEV
apt install git composer docker.io docker-compose -y
sudo gpasswd -a $USER docker
newgrp docker

#LAMP
apt install mysql-server-8.0 apache2 phpmyadmin -y

#sudo mysql -u root
#CREATE USER 'admin'@'localhost' IDENTIFIED BY '814172050';
#GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost';

#Up config
sudo echo "include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
sudo systemctl restart apache2.service

apt install libapache2-mod-php


wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb && sudo dpkg -i dbeaver-ce_latest_amd64.deb

wget https://dl3.cdn.filezilla-project.org/client/FileZilla_3.55.1_x86_64-linux-gnu.tar.bz2?h=OXVcRAq7FFa3osEEKEQmvw&x=1630374180 && tar -jxvf FileZilla_3.55.1_x86_64-linux-gnu.tar.bz2

apt install flameshot kolourpaint wine -y

apt install remmina simplescreenrecorder -y

#IDE Delevoper
wget https://code.visualstudio.com/docs/?dv=linux64_deb | sudo dpkg -i code_1.60.0-1630494279_amd64.deb

apt install psensor -y