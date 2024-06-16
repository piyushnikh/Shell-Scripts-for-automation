#Write a script which fullfills below requirement and prints the output.

#1) Find the number of normal files in a directory.
#2) Find the number of directories inside a directory.
#3) Find the number of link files inside a directory.


#!/bin/bash

INPUT_PATH="$1"

if [ -e "$INPUT_PATH" ]; then

FILE_COUNT="$(ls -l "$INPUT_PATH" | grep "^-"| wc -l)"

DIRECTORY_COUNT="$(ls -l "$INPUT_PATH" | grep "^d" | wc -l)"

LINKFILE_COUNT="$(ls -l "$INPUT_PATH" | grep "^l" | wc -l)"

echo "The number of files is "$FILE_COUNT""

echo "The number of directories is "$DIRECTORY_COUNT""

echo "The number of link files is "$LINKFILE_COUNT""

else

echo "Please check the entered path as it's incorrect !"

fi
