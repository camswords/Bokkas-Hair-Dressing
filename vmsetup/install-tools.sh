
# download apache, php, mysql
sudo tasksel install lamp-server

# create new database user
mysql -u root -phair < /root/setup-database.sql

# install unzip command
apt-get install unzip

# remove the apache default index file
rm /var/www/index.html

# download joomla installation
wget http://joomlacode.org/gf/download/frsrelease/12610/53421/Joomla_1.5.20-Stable-Full_Package.zip

# extract joomla into the apache directory
unzip Joomla_1.5.20-Stable-Full_Package.zip -d /var/www

# restart apache to ensure php can be rendered
/etc/init.d/apache2 restart

echo 'done! navigate to http://174.143.168.209/ to complete installation'
