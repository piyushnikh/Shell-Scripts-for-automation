#!/bin/bash

i=0

while [ "$i" -lt 1000 ];
do
	a="$(echo ""$i" + 1" | bc -l)"
	i="$(echo "$a")"
	echo "$i"
	sleep 1
done
