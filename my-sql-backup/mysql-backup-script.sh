#!/bin/bash

path=/var/tmp/

backup_date="$(date +%Y%m%d)"

echo "Initializing backup for database........."

sleep 5

mysqldump -uroot -pH2e4m6A3NT@ --all-databases > $path/mysql_backup_$(backup_date).sql

if [ "$?" -eq 0 ]; then

echo "The backup is completed please check your mailbox !"

SUBJECT=Attention ! MySql DB backup is ready.

TO=piyushnikh@gmail.com

BODY=Attached is the backup please check.

echo "$BODY" | mailx -a /var/tmp/mysql_backup_$(backup_date).sql -s "$SUBJECT" -- $TO

else

echo "Backup cannot be created due to some issue, please try again later !"

done
