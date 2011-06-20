

# update the sudoers file to include extra permissions
echo '%wheel ALL=(ALL) ALL' >> /etc/sudoers
echo 'bokka ALL=NOPASSWD: ALL' >> /etc/sudoers

# create the new user
useradd -m --shell /bin/bash bokka

# add the wheel group
groupadd wheel

# ensure that user is associated with the wheel group
usermod -a -G wheel bokka

# update users password
passwd bokka <<EOF
hair
hair
EOF

# switch to the new user
su -c "sudo /root/install-tools.sh" - bokka
