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

### Install oracle-java8

sudo apt-get install -y software-properties-common

sudo apt-get install -y python-software-properties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update

echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

## todo - add ENV variables, $JAVAHOME to .bashrc

####

# Install Java (open)
  # apt-get -y install openjdk-7-jre              2> /dev/null
  # apt-get -y install openjdk-7-jdk lib32stdc++6 2> /dev/null

# -- fin
