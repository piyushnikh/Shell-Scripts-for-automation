#!/bin/bash

# List of servers from file. This can be hosts file or any file having server I/P addresses.

SERVER_LIST="$(cat $1 | awk '{print $1}')"

# Make sure that script not executed with root

if [ "$(id -u)" -eq 0 ]; then

echo "Please run this script as a normal user" >&2

exit 1

fi

# Make sure the user provides the file argument

if [ "$#" -eq 0 ]; then

echo "Please provide file which has server names" >&2

exit 1

fi

# Initialize command variable

COMMAND="$2"

# Loop through SERVER_LIST

for SERVER in "$SERVER_LIST"

do

OUTPUT="$(ssh $(id -un)@$SERVER $COMMAND)"

echo "$OUTPUT"

done
