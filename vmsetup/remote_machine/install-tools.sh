
# install the java jdk
echo "deb http://archive.canonical.com/ lucid partner" >> /etc/apt/sources.list
apt-get update
apt-get install sun-java6-jre sun-java6-plugin sun-java6-fonts --assume-yes

# download play framework
wget http://download.playframework.org/releases/play-1.2.1.zip

# install play framework
sudo apt-get install unzip
unzip play-1.2.1.zip
sudo mv play-1.2.1 /var/lib/
rm -f ~/play-1.2.1.zip

echo 'export PATH=$PATH:/var/lib/play-1.2.1/' >> ~/.bashrc


# install the mail client
sudo apt-get install postfix --assume-yes <<EOF
2
rebeccacheri.co.uk
EOF
sudo /etc/init.d/postfix stop
sudo mv /root/remote_machine/mail/virtual /etc/postfix
sudo mv /root/remote_machine/mail/main.cf /etc/postfix
sudo postmap /etc/postfix/virtual
sudo /etc/init.d/postfix start


# ensure that the user can log on the environment without a password
mkdir ~/.ssh
mv /root/id_rsa.pub ~/.ssh/authorized_keys

# finished!
echo
echo 'Rebecca Cheri Environment has been successfully installed.'