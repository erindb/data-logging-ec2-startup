#! usr/bin/bash

#sudo apt-get update
#sudo apt-get install apache2 apache2-doc apache2-utils
sudo apt-get install libapache2-mod-php php php-pear

sudo groupadd erinwebspace
sudo usermod -a -G erinwebspace erindb
sudo usermod -a -G erinwebspace www-data

sudo mkdir /var/www/erindb
sudo chown -vR erindb:erinwebspace /var/www/html/erindb/
sudo chmod -R g+rx /var/www/erindb
sudo chmod -vR g+w /var/www/erindb

sudo cp -r log_data.php /var/www/html/erindb
sudo chmod 755 /var/www/html/erindb/log_data.php
sudo chown -vR erindb:erinwebspace data
sudo chmod -vR g+w data
