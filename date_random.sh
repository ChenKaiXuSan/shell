#!/bin/bash
# Program:
#	利用shell中date函数生成随机数
# Author:
#	Xu

function random(){
	min=$1
	max=$2-$1
	num=$(date +%s+%N)
	((retnum=num%max+min))
	echo $retnum
}

for i in {1..10}
do
	out=$(random 2 10000)
	echo $i,"2-10000",$out
done
