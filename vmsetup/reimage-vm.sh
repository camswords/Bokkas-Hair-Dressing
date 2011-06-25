

if [ ! -n "$1" ]
then
	echo "Usage: `basename $0` server_ip_address server_name"
	exit 1
fi

if [ ! -n "$2" ]
then
	echo "Usage: `basename $0` server_ip_address server_name"
	exit 1
fi


VM_SERVER=$1
SERVER_NAME=$2

# write the name of the server into the etc hosts file
sed -ie "\|^$VM_SERVER.*\$|d" /etc/hosts
echo "$VM_SERVER $SERVER_NAME" >> /etc/hosts

# copy the files to the remote server
scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -r remote_machine /home/cam/.ssh/id_rsa.pub root@$SERVER_NAME:~

# run the install script
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@$SERVER_NAME 'chmod 755 ./remote_machine/*.sh'
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@$SERVER_NAME './remote_machine/install.sh'
