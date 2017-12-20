#!/bin/bash
# Program:
#	Use function to repeat information.

function printit(){
	echo -n "Your choice is "  # -n不断行继续在同一行显示
}
echo "This program will print your selection!"
#read -p "Input your choice:" choice  # 暂时取消，可以替换！
#case ${choice} in  # 暂时取消，可以替换！
case ${1} in 
	"one")
		printit ;echo ${1} | tr 'a-z' 'A-Z'  # 将参数做大小写转换
		;;
	"two")
		printit; echo ${1} | tr 'a-z' 'A-Z'
		;;
	"three")
		printit; echo ${1} | tr 'a-z' 'A-Z'
		;;
	*)
		echo "Usage ${0} {one two three}"
		;;
esac
