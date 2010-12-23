
add another crontab
crontab -e

show crontabs
crontab -l

you can also drop files into /etc/cron-daily etc.

Eg. we want to backup the DB every night:
	
* *    * * *   root    mysqldump -u bokka -phair --add-drop-database --databases Joomla > /tmp/rebecca-cheri-backup-`date '+\%Y-\%m-\%d-\%I:\%M\%p'`.sql
	
** Good Resource **
http://www.pantz.org/software/cron/croninfo.html

