#!/bin/bash

# clear the build directory
rm -rf build/*

# compress the templates into the build directory 
tar -cjf bokkas-website-templates.bc2 --directory ../src/templates/bokkas-website .

# send the files to the server
scp bokkas-website-templates.bc2 bokka@production:~
scp install_templates.sh bokka@production:~
rm -f bokkas-website-templates.bc2

# make ensure the file is runnable
ssh bokka@production 'chmod 755 install_templates.sh'

# install templates
ssh bokka@production 'sudo ./install_templates.sh'

