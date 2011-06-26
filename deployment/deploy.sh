
if [ ! -n "$1" ]
then
	echo "Usage: `basename $0` server_name"
	exit 1
fi

SERVER_NAME=$1

# remove the old file
rm RebeccaCheri.zip --force

# create a new deployment archive
cd ../..
zip -r ./RebeccaCheri/deployment/RebeccaCheri.zip RebeccaCheri -x "**/logs/*" -x "**/.git/*" -x "**/tmp/*" -x "**/deployment/*" -x "**/eclipse/*" -x "**/vmsetup/*" -x "**/.settings/*" -x "**/test/*" -x "**/.classpath" -x "**/.project" -x "**/.gitignore"
cd ./RebeccaCheri/deployment

# copy latest artifact to the remote server, unzip
scp RebeccaCheri.zip bokka@$SERVER_NAME:~

# stop the play server
ssh bokka@$SERVER_NAME 'sudo /var/lib/play-1.2.1/play stop RebeccaCheri'

# remove the old rebecca cheri
ssh bokka@$SERVER_NAME 'sudo rm RebeccaCheri_previous -rf'
ssh bokka@$SERVER_NAME 'mv RebeccaCheri RebeccaCheri_previous'

# extract the new rebecca cheri
ssh bokka@$SERVER_NAME 'unzip RebeccaCheri.zip'

# start the play server
ssh bokka@$SERVER_NAME 'sudo /var/lib/play-1.2.1/play start RebeccaCheri --%prod'
