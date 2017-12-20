#!/bin/bash
# Program
#	Use id, finger command to check system account's information.
#	id命令可以显示用户的uid，gid，组

users=$(cut -d ':' -f1 /etc/passwd)  # 截取账号名称
#echo ${users}
for username in ${users}  # 开始循环进行
do
	id ${username}
done
