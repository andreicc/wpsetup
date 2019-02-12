#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
wget -c https://dev.mysql.com/get/mysql-apt-config_0.8.10-1_all.deb
apt-get update -y
apt-get upgrade -y
apt-get install debconf-utils -y
echo "mysql-community-server  mysql-server/default-auth-override      select  Use Strong Password Encryption (RECOMMENDED)" | debconf-set-selections
apt-get install mysql-server -y # accept all defaults
apt-get install php7.2 -y
apt-get purge apache2 -y
apt-get install nginx -y
apt-get install -y tmux curl wget php7.2-fpm php7.2-cli php7.2-curl php7.2-gd php7.2-intl 
apt-get install -y php7.2-mysql php7.2-mbstring php7.2-zip php7.2-xml unzip
apt-get install -y redis
apt-get install -y fail2ban


#mysql_secure_installation # choose y for everything and enter a secure root password
