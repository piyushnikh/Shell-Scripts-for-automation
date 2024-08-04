#!/bin/bash

#Script to print numbers from 1 to 1000

i=0

while [ "$i" -lt 1000 ];
do
	a="$(echo ""$i" + 1" | bc -l)"
	i="$(echo "$a")"
	echo "$i"
	sleep 1
done
