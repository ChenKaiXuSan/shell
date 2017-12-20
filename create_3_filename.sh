#!/bin/bash
# Program:
# 	Program creates three files, which named by user's input and command.

# 1.让使用者输入文件名称，并取得fileuser这个变量
echo -e "I will use 'touch' command to create 3 files."
read -p "Please input your filename:" fileuser

# 2.为了避免使用者随意回车，利用【变量功能】分析文件名称
filename=${fileuser:-"filename"}  # 开始判断是否有配置文件名

# 3.开始利用date指令来取得所需要的文件名
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

# 4.将文件名创建
#touch "${file1}"
#touch "${file2}"
touch "${file3}"
