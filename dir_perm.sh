#!/bin/bash
# Program
#	User input dir name,I find the permission of files.

# 1.先看看目录是否存在
read -p "Please input a directory:" dir 
#dir="/home/xu/shell"
if [ "${dir}" == "" -o ! -d "${dir}" ]; then
	echo "THe ${dir} is NOT exist in your system."
	exit 1
fi

# 2.开始测试文件
filelist=$(ls ${dir})  # 列出所有该目录下的文件名称
read -p "input a filename:" file_name

for filename in ${filelist}
do
	if [ "${file_name}" == "${filename}" ]; then
		perm=""
		test -r "${dir}/${file_name}" && perm="${perm} readable"
		test -w "${dir}/${file_name}" && perm="${perm} writable"
		test -x "${dir}/${file_name}" && perm="${perm} executable"
		echo "The ${dir}/${file_name}'s permissiong is ${perm}"
		exit 2
	fi
done
echo "The file is not exist."
