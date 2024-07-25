#!/bin/bash

# This script works as a command finder on the machine.

a="$1"

# Below statement checks if exactly 1 argument is passed to script.

if [ "$#" -eq 0 -o "$#" -gt 1 ]; then

echo "Enter exactly one argument" >&2

exit 1

else

# Below logic gives you if command is available or not.

b="$(which "$a")"

if [ "$?" -eq 0 ]; then

echo "Command is available in : "$b""

else

echo "Command is not available"

fi

fi
