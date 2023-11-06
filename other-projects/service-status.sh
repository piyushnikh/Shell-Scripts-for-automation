#!/bin/bash

# Enter service name as your argument

service="$1"

# Logic for checking if the service exists

echo "Checking the status of service....."

if [ -z "$service" ]; then

    echo "Please enter a valid service name"

    exit 1
    
else

# Logic for starting service is it exists

    echo "Starting the service...."
    
		sudo systemctl start "$service"
  
		status=$(sudo systemctl status "$service" | awk 'NR==3 {print}' | cut -d ":" -f 2 | cut -d " " -f 1 | cut -d " " -f 2)
  
    echo "$service is $status"
    
fi
