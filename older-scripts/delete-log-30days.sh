#!/bin/bash

# This script will take input from user about the directory to be cleared for files having more than 30 days.

# The below logic is used to check if script is run as root.

if [ "$(id -u)" -ne 0 ]; then

echo "You need root previlage to run the script"

exit 1

fi

path="$1"

echo "$1"

echo "Searching files & deleting...."

sleep 5

find "$path" -type f -mtime +30 -delete

if [ "$?" -eq 0 ];

then

echo "Files are deleted successfully !"

else

echo "Files are not deleted !"

fi
