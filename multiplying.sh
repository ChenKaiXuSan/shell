#!/bin/bash
# Program:
# 	User inputs 2 integer; program will cross two numbers.

echo -e "You should input 2 numbers, I will multiplying them. \n"
read -p "first number: " firstnu
read -p "second number: " secnu
total=$((${firstnu}*${secnu}))
echo -e "\nThe result of ${firstnu} x ${secnu} is == ${total}"

