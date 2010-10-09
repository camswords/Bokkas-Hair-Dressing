#!/bin/bash

# run backup on prod database
ssh bokka@production 'mysqldump -u bokka -phair --add-drop-database --databases Joomla > ~/Joomla_backup.sql'

# copy to local machine
scp bokka@production:~/Joomla_backup.sql ~/

# restore to local system
mysql -u bokka -phair < ~/Joomla_backup.sql
