#!/bin/bash

i=0

while true

do

date | cut -d " " -f 4

i="$(echo ""$i" + 1" | bc -l)"

sleep 1

done
