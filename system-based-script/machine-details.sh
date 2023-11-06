#!/bin/bash

# This script fetches important details of the machine & then runs as a cron job to store in /root directory.

IP_ADDRESS="$(ifconfig | awk 'NR == 2 {print $(NF - 0)}')"

UPTIME="$(uptime | awk -F ' ' '{print $1}')"

LAST_LOGIN="$(lastlog -u $(id -u) | awk 'NR == 2')"

DISK_UTILIZATION="$(df -h)"

FREE_MEMORY="$(free -h)"

echo "########################IP_ADDRESS###############################"

sleep 3

echo "The IP Address is $IP_ADDRESS"

echo "########################UPTIME###################################"

sleep 3

echo "The uptime is $UPTIME"

echo "########################LAST_LOGIN###############################"

sleep 3

echo "The last login time $LAST_LOGIN"

echo "########################DISK_UTILIZATION#########################"

sleep 3

echo "The disk utilization is $DISK_UTILIZATION"

echo "########################FREE_MEMORY##############################"

sleep 3

echo "The free momory is $FREE_MEMORY"
