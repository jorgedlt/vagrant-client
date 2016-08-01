#!/usr/bin/env bash
# vi: set ft=ruby :
#
# v_bootstrap.sh
#
# jorgedlt@gmail.com - 2016-07-22 12:50:19

# Update & Upgrade
apt-get update
apt-get -y upgrade
#
apt-get install -y htop git

# apt-get install -y curl mysql-server-5.5
# php5 php5-curl php5-mysql php5-cli php5-readline php5-xdebug php-pear hhvm
# vim git redis-server redis-tools rabbitmq-server varnish varnish-doc nginx

# Install nodejs - deprecated method - Do Not Use
#  apt-get install -y nodejs
#  ln -s /usr/bin/nodejs /usr/local/bin/node
#                      see - https://goo.gl/rPi7Cb

# Install Apache
# apt-get install -y apache 2> /dev/null2
# if ! [ -L /var/www ]; then
#  rm -rf /var/www
#  ln -fs /vagrant /var/www
# fi

# Install Java (open)
  # apt-get -y install openjdk-7-jre              2> /dev/null
  # apt-get -y install openjdk-7-jdk lib32stdc++6 2> /dev/null

# -- fin
