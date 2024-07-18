#!/bin/bash

# Array declaration the below IP addresses are not valid, just for demo purposes.

servers=("13.201.135.240" "65.2.128.109" "15.206.70.149")

# Make sure that script not executed with root

if [ "$(id -u)" -eq 0 ]; then

echo "Please run this script as a normal user" >&2

exit 1

fi

# Initialize command variable

COMMAND="$1"

# Loop through SERVER_LIST

for SERVER in "${servers[@]}"

do

ssh piyush@"$server" "$COMMAND"

sleep 3

done
