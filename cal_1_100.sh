#!/bin/bash
# Program:
#	Use loop to claculate "1+2+3...+100" result.

s=0 #  总和
i=0 #  累计数
while [ "${i}" != "100" ]
do
	i=$(($i+1))
	s=$(($s+$i))
done
echo "The result is == $s"
