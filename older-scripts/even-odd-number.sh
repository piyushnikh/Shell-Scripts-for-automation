#!/bin/bash

read -p "Enter your input number : " a

if [ "$a" -eq 0 -o "$a" -lt 0 ]; then

echo "Enter a non-zero, positive number to test !"

exit 1

fi

if [ "$(echo ""$a" % 2" | bc)" -eq 0 ]; then

echo "The number is even."

else

echo "The number is odd."

fi
