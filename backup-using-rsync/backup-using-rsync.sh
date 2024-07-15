#!/bin/bash

read -p "Enter the remote server username : " user_name

read -p "Enter the remote server directory : " dir_name

read -p "Enter the IP Address of remote machine : " ip

read -p "Enter the path for which backup needs to be taken : " src_path

if [ -z "$path" ]; then

echo "Starting to back up the directory on remote server.................."

rsync -av -e ssh "$src_path" "$user_name"@"$ip":"$dir_name"

else

echo "Input directory doesn't exist give a valid path !"

exit 1

fi
