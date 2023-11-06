#!/bin/bash

# This script searches the argumented packages & shows the results.

# Below statements allows user to see what script can do.

echo "Enter any one of the below options"

echo -e "1)search\n2)install\n3)remove"

# The below logic is used to check if script is run as root.

if [ "$(id -u)" -ne 0 ]; then

echo "You need root previlage to run the script"

exit 1

fi

# The below logic checks whether exactly 2 args are passed to the script.

if [ "$#" -lt 2 ]; then

echo "Enter the package-name & operation to be performed."

exit 1

fi

a="$1"

b="$2"

case "$a" in

"search") echo "Searching the package in repository"

          yum search "$b"
		  
		  ;;
		  
"install") echo "Installing the package from repository"

           yum install -y "$b"
		   
		   if [ "$?" -ne 0 ]; then
		   
		   echo "The package doesn't exist"
		   
		   exit 1
		   
		   fi
		   
		   ;;

"remove") echo "Removing the installed package"

          yum remove -y "$b"
		  
		  if [ "$?" -eq 0 ]; then
		  
		  echo "The package is removed"
		  
		  exit 0
		  
		  fi
		  
		  ;;
    
    *) echo "Invalid option, please give options from the above menu !"

       ;;

esac
