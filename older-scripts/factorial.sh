#!/bin/bash

b=1

read -p "Enter your desired number : " a

if [ "$a" -eq 0 ]; then
	echo "The factorial of 0 is always 1"
elif [ "$a" -eq 1 ]; then
	echo "The factorial of 1 is always 1"
elif [ "$a" -lt 0 ]; then
	echo "Please enter positive number"
else
	while [ "$a" -gt 1 ]
	do
		b="$(echo ""$a" * "$b"" | bc -l)"
		a="$(echo ""$a" - 1" | bc -l)"
	done
	echo "$b"
fi
