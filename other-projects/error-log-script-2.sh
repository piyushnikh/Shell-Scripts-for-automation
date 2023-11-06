#!/bin/bash

# The script will find print the unique file names & search word "error" or "warnings" in all the "*.log" files at /var/log directory.

grep -iE "error|warnings" /var/log/*.log | awk -F ":" '{print $1}' | sort | uniq -c
