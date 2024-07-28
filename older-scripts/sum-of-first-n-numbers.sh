#Script to find sum of first "n" natural numbers

#!/bin/bash

read -p "Enter the last number : " a

i=0

sum=0

if [  "$a" -eq 0 ]; then

echo "Enter a non zero number please !"

else

while [ "$i" -le "$a" ]

do

sum="$(echo ""$sum" + "$i"" | bc -l)" 

i="$(echo ""$i" + 1" | bc -l)"

done

fi

echo "$sum"
