#!/bin/bash
# Program:
#	This program shows the user's choice

read -p "Please input (Y/N):" yn
[ "${yn}" == "Y" -o "${yn}" == "y" ] && echo "OK, continue" && exit 0
[ "${yn}" == "N" -o "${yn}" == "n" ] && echo "Oh, interrupt!" && exit 0
echo "I don't konw waht you choice is" && exit 0
