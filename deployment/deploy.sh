
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
zip -r ./Bokkas-Hair-Dressing/deployment/RebeccaCheri.zip Bokkas-Hair-Dressing -x "**/.git/*" -x "**/tmp/*" -x "**/deployment/*" -x "**/eclipse/*" -x "**/vmsetup/*" -x "**/.settings/*" -x "**/test/*" -x "**/.classpath" -x "**/.project" -x "**/.gitignore"
cd ./Bokkas-Hair-Dressing/deployment

# copy latest artifact to the remote server, unzip
scp RebeccaCheri.zip bokka@$SERVER_NAME:~

# stop the play server
ssh bokka@$SERVER_NAME '/var/lib/play-1.2.1/play stop RebeccaCheri'

# remove the old rebecca cheri
ssh bokka@$SERVER_NAME 'rm RebeccaCheri_previous -rf'
ssh bokka@$SERVER_NAME 'mv RebeccaCheri RebeccaCheri_previous'

# extract the new rebecca cheri
ssh bokka@$SERVER_NAME 'unzip RebeccaCheri.zip'
ssh bokka@$SERVER_NAME 'mv Bokkas-Hair-Dressing RebeccaCheri'

# start the play server
ssh bokka@$SERVER_NAME '/var/lib/play-1.2.1/play start RebeccaCheri'
