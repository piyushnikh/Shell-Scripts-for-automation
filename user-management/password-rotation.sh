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

# This section will change the password for the user.

fi

for i in "$@"

do

password="$(date +%s$RANDOM | sha256sum | head -c25)"

char_set="$(echo "#%^&*" | fold -w1 | shuf | head -1)"

final_password="$password$char_set"

echo "$final_password" | passwd --stdin "$i"

echo "The password for $i is $final_password"

chage -M 90 "$i"

chage -W 60 "$i"

echo "You can change your password in before 90 days & warning will be sent 60 days before expiry"

done
