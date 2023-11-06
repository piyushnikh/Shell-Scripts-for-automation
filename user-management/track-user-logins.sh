#!/bin/bash

# This script tracks user sessions on remote servers & records in a specified file.

USER_DETAILS="$(who | awk '{print $1, $3, $4, $5}')"

for i in "$USER_DETAILS"

do

echo "$USER_DETAILS" 

done
