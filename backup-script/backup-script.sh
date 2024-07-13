#!/bin/bash

#Finds files greater than "200" minutes and takes backup. Normally this timeframe can be anything apart from the given.

find /root/logs/ -type f -cmin +200 | xargs tar -cvzf /root/backup/metrics_backup_"$(date +%d%H%M%Y)".tar.gz

#Deletes the file for which backup taken

find /root/logs/ -type f -cmin +200 -delete
