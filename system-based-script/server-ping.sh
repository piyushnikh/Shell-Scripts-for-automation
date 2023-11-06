#!/bin/bash

# This script performs ping healthcheck for remote servers.

time="$(date)"

echo "Running script on $time"

cat /etc/hosts | cut -d " " -f 1 | while read IP

do

echo "Pinging $IP with 3 bytes of data....."

ping -c 3 "$IP"

done
