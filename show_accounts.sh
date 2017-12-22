#!/bin/bash
# Program:
#	取出/etc/passwd第一行账户，并显示
# Author:
#	Xu

accounts=`cat /etc/passwd | cut -d ':' -f1`
for account in ${accounts}
do
	declare -i i=$i+1  # 用declare进行数字的排序
	echo "The $i account is \"$account\""
done	
