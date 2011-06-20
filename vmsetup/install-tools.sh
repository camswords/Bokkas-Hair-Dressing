
# download play framework
wget http://download.playframework.org/releases/play-1.2.1.zip

# install play framework
sudo apt-get install unzip
unzip play-1.2.1.zip
sudo mv play-1.2.1 /var/lib/

echo 'export PATH=$PATH:/var/lib/play-1.2.1/' >> ~/.bashrc


# install the mail client
sudo apt-get install postfix --assume-yes
sudo /etc/init.d/postfix stop
sudo mv /root/virtual /etc/postfix
sudo mv /root/main.cf /etc/postfix
sudo postmap /etc/postfix/virtual
sudo /etc/init.d/postfix start


# finished!
echo
echo 'Rebecca Cheri Production Environment has been successfully installed.'