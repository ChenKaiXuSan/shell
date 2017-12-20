#!/bin/bash
# Program:
#	Using netstat and grep to detect WWW,SSH,FTP and Mail services.

# 1.先做一些告知的动作
echo "Now，I will detect your Linux server's services!"
echo -e "The www, ftp, ssh, and mail will be detect! \n"

# 2.开始进行一些测试的工作，并且也输出一些信息
testfile=/dev/shm/netstat_checking.txt
netstat -tuln > ${testfile}  # 先转存数据到内存中

testing=$(grep ":80" ${testfile}) # 检测port 80
if [ "${testing}" != "" ]; then
	echo "WWW is running in your system."
fi
testing=$(grep ":22" ${testfile}) # 检测port 22
if [ "${testing}" != "" ]; then
	echo "SSH is running in your system."
fi
testing=$(grep ":21" ${testfile}) # 检测port 21
if [ "${testing}" != "" ]; then
	echo "FTP is running in your system."
fi
testing=$(grep ":25" ${testfile}) # 检测port 25
if [ "${testing}" != "" ]; then
	echo "Mail is running in your system."
fi
testing=$(grep ":631" ${testfile}) 
if [ "${testing}" != "" ]; then
	echo "打印机端口存在"
fi


	




