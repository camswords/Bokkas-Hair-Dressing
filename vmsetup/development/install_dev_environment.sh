if [ ! -f ~/.ssh/id_rsa ] || [ ! -f ~/.ssh/id_rsa.pub ]
then
    echo please install the ssh keys to retrieve the git repo from git hub, then run this tool once more
    exit
fi

# install production ip into hosts file
sudo su -
echo "174.143.203.205 production" >> /etc/hosts
exit

# install vim, git
sudo apt-get update

sudo apt-get install vim -y

sudo apt-get install git-core -y 

git config --global user.name 'Cam'
git config --global user.email 'cam@someemailthatdoesntwork.com'


# download bokkas source code
mkdir ~/Documents/development 
cd ~/Documents/development

git clone git@github.com:camswords/Bokkas-Hair-Dressing.git

# install unzip command
sudo apt-get install unzip

# remove the apache default index file
sudo rm /var/www/index.html

# download joomla installation
wget http://joomlacode.org/gf/download/frsrelease/12610/53421/Joomla_1.5.20-Stable-Full_Package.zip

# extract joomla into the apache directory
sudo unzip Joomla_1.5.20-Stable-Full_Package.zip -d /var/www

# configure joomla for bokkas-website
sudo cp /Documents/development/Bokkas-Hair-Dressing/src/configuration.php /var/www
sudo rm -rf /var/www/installation

# restart apache to ensure php can be rendered
sudo /etc/init.d/apache2 restart

echo 'done! navigate to http://127.0.0.1/ to visit website'
