#!/bin/bash

#Take input from user

read -p "Enter your input number : " a

#Initialize a variable

b=1

#Intialize a function to calculate factorial

factorial () {
if [ "$a" -lt 0 ]; then
echo "Factorial of negative number is not defined, please enter a positive number"
elif [ "$a" -eq 0 ]; then
echo "Factorial of 0 is always 1"
elif [ "$a" -eq 1 ]; then
echo "Factorial of 1 is always 1"
else
while [ "$a" -gt 1 ];
do
b="$(echo ""$a" * "$b"" | bc -l)"
a="$(echo ""$a" - 1" | bc -l)"
done
fi
echo "$b"
}

#Function call

factorial
