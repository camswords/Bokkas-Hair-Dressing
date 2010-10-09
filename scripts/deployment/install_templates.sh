#!/bin/bash

# stop the webserver
/etc/init.d/apache2 stop

# deploy the new templates
mkdir  /var/www/templates/bokkas-website 2> /dev/null
rm -rf /var/www/templates/bokkas-website/*

tar -xjf bokkas-website-templates.bc2 --directory /var/www/templates/bokkas-website/ 

# start the webserver
sudo /etc/init.d/apache2 start

