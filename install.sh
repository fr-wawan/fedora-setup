#!/bin/bash

cd ~/

sudo dnf install httpd php php-cli php-php-gettext php-mbstring php-mcrypt php-mysqlnd php-pear php-curl php-gd php-xml php-bcmath php-zip php-fpm php-pgsql -y mariadb-server nodejs

sudo systemctl start httpd

sudo systemctl enable httpd

sudo systemctl start mariadb

sudo systemctl enable mariadb

sudo mysql_secure_installation

sudo dnf install phpmyadmin composer fish

chsh -s $(which fish)

sudo systemctl restart httpd
