#!/bin/bash

echo "###########Checking CPU usage##############"

sleep 3

cpu_usage=$(cat /proc/loadavg | awk '{print $1}' | cut -d " " -f 1 | cut -d "." -f 1)

if [ $cpu_usage -ge 40 ]; then

SUBJECT="ATTENTION: CPU load is over thresold on $(hostname) at $(date)"

MESSAGE="/tmp/msg.out"

TO="piyushnikh@gmail.com"

echo "The CPU usage is : $cpu_usage%" >> $MESSAGE

echo "+------------------------------------------------------------------+" >> $MESSAGE

echo "Top 20 processes which consuming high CPU" >> $MESSAGE

echo "+------------------------------------------------------------------+" >> $MESSAGE

echo "$(top -bn1 | head -20)" >> $MESSAGE

mailx -st "$SUBJECT" "$TO" < $MESSAGE

else

echo "The CPU usage is : $cpu_usage% which is under threshold"

fi
