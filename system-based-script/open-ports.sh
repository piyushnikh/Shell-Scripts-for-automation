#!/bin/bash

# Below scripts check the open ports on your server

OPEN_PORTS=$(netstat -nutl | awk "NR != 1" | awk "NR != 1" | awk -F " " '{print $4}' | awk -F ":" '{print $NF}' | sort -rh | uniq)

if [ "$?" -eq 0 ]; then
        echo "The open ports are \n$OPEN_PORTS"
fi
