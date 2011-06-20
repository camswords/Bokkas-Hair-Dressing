

if [ ! -n "$1" ]
then
	echo "Usage: `basename $0` server_ip_address"
	exit 1
fi

VM_SERVER=$1

# copy the files to the remote server
scp install.sh install-tools.sh mail/virtual mail/main.cf root@$VM_SERVER:~


# run the install script
ssh root@$VM_SERVER 'chmod 755 ./*.sh'
ssh root@$VM_SERVER './install.sh'

