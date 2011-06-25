

# remove the old file
rm RebeccaCheri.zip --force

# create a new deployment archive
zip -r ./RebeccaCheri.zip ../../Bokkas-Hair-Dressing -x "**/.git/*" -x "**/tmp/*" -x "**/deployment/*" -x "**/eclipse/*" -x "**/vmsetup/*" -x "**/.settings/*" -x "**/test/*" -x "**/.classpath" -x "**/.project" -x "**/.gitignore"

# copy latest artifact to the remote server, unzip
scp RebeccaCheri.zip root@174.143.168.239:~

# stop the play server


# remove the old rebecca cheri
ssh root@174.143.168.239 'rm RebeccaCheri_previous -rf'
ssh root@174.143.168.239 'mv RebeccaCheri RebeccaCheri_previous'

# extract the new rebecca cheri
ssh root@174.143.168.239 'unzip RebeccaCheri.zip'
ssh root@174.143.168.239 'mv Bokkas-Hair-Dressing RebeccaCheri'


# start the play server



