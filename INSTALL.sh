#! usr/bin/bash

sudo apt-get update
sudo apt-get install apache2 apache2-doc apache2-utils
sudo apt-get install libapache2-mod-php php php-pear

sudo chown -R www-data:www-data /var/www
sudo chmod -R g+rx /var/www

sudo cp -r log_data.php /var/www/html/
sudo chmod 755 /var/www/html/log_data.php
sudo chown -R www-data:www-data data 
