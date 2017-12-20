#/bin/bash
# Program:
#	User input a filename, program will check the flowing:
#	1.) exist?	2.)file/directory?	3.)file permissions

# 1. 让使用者输入文件名，并且判断使用者是否真的有输入字串？
echo -e "Please input a filename,I will check the filename's type and permission. \n\n"
read -p "Input a filename:" filename
test -z ${filename} && echo "You must input a filename," && exit 0

# 2. 判断文件是否存在，若不存在则显示讯息并结束脚本
test ! -e ${filename} && echo "The filename'${filename}'do not exist" && exit 0

# 3. 开始判断文件类型与属性
test -f ${filename} && filetype="regulare file"
test -d ${filename} && filetype="directory"
test -r ${filename} && perm="readable"
test -w ${filename} && perm="${perm} writable"
test -x ${filename} && perm="${perm} executable"

# 4. 开始输出信息
echo "The filename:${filename} is a ${filetype}"
echo "And the permissions for you are: ${perm}"
