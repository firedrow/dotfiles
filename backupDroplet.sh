#!/bin/bash
# Backup the NetDoc VM to files Remove the old backup file before making a new one
rm /home/drowland/backup.tar.gz

# Backup MySQL database phpipam
#mysqldump -u root -p7f4878BAb/*- syspass > /home/drowland/syspass.sql
mysqldump -u root -p7f4878BAb/*- recipebook > /home/drowland/recipebook.sql
#mysqldump -u root -p7f4878BAb teampass > /root/teampass.sql

# Restore MySQL database phpipam
#mysql -u root -p7f4878BAb phpipam < phpipam.sql

#Archive backup script, database export, and wwwdir
tar -zcf backup.tar.gz --exclude=/var/www/html/piwik backupDroplet.sh README resume.json recipebook.sql /var/www/html /etc/apache2/sites-available /etc/apache2/.htpasswd

# Remove MySQL Dump
#rm /home/drowland/syspass.sql
rm /home/drowland/recipebook.sql
#rm /root/teampass.sql
