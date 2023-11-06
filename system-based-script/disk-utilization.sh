#!/bin/bash

# This script will take filesystem name as input and checks current usage.

filesystem="$1"

echo "$filesystem"

echo "Checking disk usage..........."

sleep 5

disk_size=$(df -mh | grep "$filesystem" | awk '{print $5}' | cut -d '%' -f 1)

if [ "$disk_size" -gt 20 ]; then

        echo "The disk size is more than threshold"

else

        echo "The disk size is normal"

fi
