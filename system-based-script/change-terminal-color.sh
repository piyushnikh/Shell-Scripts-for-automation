#!/bin/bash

# This script will allow you to change the color of your current terminal.

# Below is the list of all colors which you can change.

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

echo "To change your terminal color, choose any one option from below. Also please take a note that arguments to the script are case-sensitive"

echo -e "Black\nRed\nGreen\nBrown/Orange\nBlue\nPurple\nCyan\nLight Gray\nDark Gray\nLight Red\nLight Green\nYellow\nLight Blue\nLight Purple\nLight Cyan\nWhite"

a="$1"

if [ "$#" -lt 1 ]; then

echo "Enter atleast one argument, please try again !"

exit 1

fi

case $a in

"Black") echo -e "\033[0;30mHello there!"
         ;;
"Red") echo -e "\033[0;31mHello there!"
       ;;
"Green") echo -e "\033[0;32mHello there!"
         ;;
"Brown") echo -e "\033[0;33mHello there!"
         ;;
"Blue") echo -e "\033[0;34mHello there!"
        ;;
"Purple") echo -e "\033[0;35mHello there!"
          ;;
"Cyan") echo -e "\033[0;36mHello there!"
        ;;
"Light Gray") echo -e "\033[0;37mHello there!"
              ;;
"Dark Gray") echo -e "\033[1;30mHello there!"
             ;;
"Light Red") echo -e "\033[1;31mHello there!"
             ;;
"Light Green") echo -e "\033[1;32mHello there!"
               ;;
"Yellow") echo -e "\033[1;33mHello there!"
          ;;
"Light Blue") echo -e "\033[1;34mHello there!"
              ;; 
"Light Purple") echo -e "\033[1;35mHello there!"
              ;;
"Light Cyan") echo -e "\033[1;36mHello there!"
              ;;
"White") echo -e "\033[1;37mHello there!"
         ;;    
esac
