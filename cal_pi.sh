#!/bin/bash
# Program 
#	User input a scale number to calculate pi number.

echo -e "This program will calculate pi value. \n"
echo -e "You should input a float number to calculate pi value. \n"
read -p "The scale number (10~100)?" checking 
num=${checking:-"10"} # 开始判断是否有输入数值
echo -e "Starting calcuate pi vale. Be patient."
time echo "sclae=${num}; 4*a(1)" | bc -lq # 4*a(1)是bc主动提供的一个计算pi的函数
