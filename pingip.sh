#!/bin/bash
# Program:
#	Use ping command to check the network's PC state.

network="192.168.1"
for sitenu in $(seq 1 100)  # seq连续的数
do 
	# 取得ping的回传值是正确的还是失败的
	ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
	# 开始显示结果是正确的启动还是错误的没有连通
	if [ "${result}" == 0 ]; then
		echo "Server ${network}.${sitenu} is up."
	else
		echo "Server ${network}.${sitenu} is down."
	fi
done
		

