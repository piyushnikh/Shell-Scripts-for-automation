#!/bin/bash

# Sample script for never-ending while loop in shell scripting.

while true

do

date | cut -d " " -f 5

i=`expr $i + 1`

sleep 1

done
