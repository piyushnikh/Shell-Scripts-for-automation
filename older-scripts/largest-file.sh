#!/bin/bash

# This script gives largest 10 files from user mentioned path & direct the names of files to /tmp/filesize.txt file.

path="$1"

echo "$path"

du -mh "$path" | sort -hr | head -n 10 > /tmp/filesize.txt

echo "The below are the big 10 files......."

cat /tmp/filesize.txt
