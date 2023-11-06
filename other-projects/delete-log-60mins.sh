#!/bin/bash

# This script deletes app log files older than 60 minutes.

# The below logic is used to check if script is run as root.

if [ "$(id -u)" -ne 0 ]; then

echo "You need root previlage to run the script"

exit 1

fi

echo "Searching files & deleting...."

sleep 5

a="$(find "$(pwd)" -type f -amin +60 -delete)"

echo "$(basname "$a")" > /home/ec2-user/delete_log_$(date +%d%m%y%H%M%S)

echo "Files are successfully deleted, refer to the delete logs in /home/ec2-user/ for which files are deleted."
