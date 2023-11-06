#!/bin/bash

# The script will find the "Use%" & "Mounted On" in sorted order from low used % to high %

df -k | awk 'NR != 1'  | sort -rk5 -n | awk '{print $5,"   ",$6}'
