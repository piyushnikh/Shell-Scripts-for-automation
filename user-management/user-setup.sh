#!/bin/bash

# This section enforces script to be executed with root user pervilages.

if [ "$(id -u)" -ne 0 ]; then

echo "You need root previlage to run the script"

exit 1

fi

# This section checks the number of arguments supplied by the script.

if [ "$#" -eq 0 ]; then

echo "Please enter atleast one argument for this script."

exit 1

fi

# This section creates a user & password for supplied command line arguments.

# This section also implements password change days & password expiry warning logic.

for i in "$@"

do

useradd "$i"

password="$(date +%s$RANDOM | sha256sum | head -c25)"

char_set="$(echo "#%^&*" | fold -w1 | shuf | head -1)"

final_password="$password$char_set"

echo "$final_password" | passwd --stdin "$i"

echo "The password for $i is $final_password"

chage -M 90 "$i"

chage -W 60 "$i"

echo "You can change your password in 5 days & warning will be sent 2 days before expiry"

done

sleep 3

# Verifies in internal file if users are created.

echo "Checking users & their passwords..........."

sleep 3

tail -"$#" /etc/passwd | cut -d ":" -f 1
