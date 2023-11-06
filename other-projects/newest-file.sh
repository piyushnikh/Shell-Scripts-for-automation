#!/bin/bash

# This script finds the latest file present in the directory provided by the user.

DIR_PATH="$1"

file_name=$(ls -lt "$DIR_PATH" | awk 'NR != 1 {print $6" "$7" "$8" "$9}'| awk 'NR == 1')

echo "$file_name"
