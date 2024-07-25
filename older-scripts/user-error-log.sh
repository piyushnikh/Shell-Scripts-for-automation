#!/bin/bash

# Enter the user internal ID as a command line argument. 

USER_INT_ID="$1"

# Below logic checks if USER_INT_ID is supplies or not.

if [ "$#" -eq 0 ]; then

echo "USER_INT_ID cannot be null, please try again !"

exit 1

fi

# This logic displays choice to the users to check log path & take inputs accordingly.

echo -e "You have two paths to choose from 1) entlcbClone1 \n2) entlClone1"

read -p "Choose anyone of the above path : " "A"

case "$A" in 

"entlcbClone1")  echo "Searching in entlcbClone1 folder....."
		 grep -i "$USER_INT_ID" /path/to/be/searched/1
		 ;;
		   
"entlClone1")  echo "Searching in entlClone1 folder....."
	       grep -i "$USER_INT_ID" /path/to/be/searched/2
	       ;;
			   
"*") echo "Enter a valid option from the two !"
     exit 1			   
		   
esac
