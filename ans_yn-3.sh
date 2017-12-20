#!/bin/bash
# Program:
#	This program shows the user's choice

read -p "Please input (Y/N):" yn

if [ "${yn}" == "Y" ] || [ "${yn}" == "y" ]; then
	echo "OK, continue"
elif [ "${yn}" == "N" ] || [ "${yn}" == "n" ]; then
	echo "Oh, interrupt!"
	exit 0
else
	echo "I don't konw waht you choice is" && exit 0
fi
