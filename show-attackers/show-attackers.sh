#!/bin/bash

# This script counts number of failed logins by the IP Address.
# If any IP's failing more than 10 it will show the count, IP Address & location.

LIMIT='10'

LOG_FILE="$1"

# Make sure a file was supplied as an argument.

if [ ! -e -eq $LOG_FILE ]; then

echo "File is not present" >&2

exit 1

fi

# Loop through the list of failed attempts and corresponding IP addresses.

grep Failed $LOG_FILE | awk '{print $(NF - 3)}' | sort | uniq -c | sort -nr | while read COUNT IP

do

# If the number of failed attempts is greater than the limit, display count, IP, and location.

if [ "$COUNT" -gt "$LIMIT" ]; then

LOCATION=$(geoiplookup $IP)

echo "$COUNT $IP $LOCATION"

fi

done

exit 0
