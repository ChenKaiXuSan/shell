#!/bin/bash
# Program:
#	Try do  tell you what you may eat.
#	将一些店家添加到一组阵列当中，然后通过乱数处理取得一家店家。

eat[1]="汉堡"
eat[2]="炸鸡"
eat[3]="彩虹日式便当"
eat[4]="张亮麻辣烫"
eat[5]="想不出吃啥就叫这个试试"
eat[6]="帅师傅方便面"
eat[7]="吉野家"
eat[8]="怀念拉面"
eat[9]="食堂简餐"
eatnum=9  # 餐厅数

check=$((${RANDOM} * ${eatnum} / 32767 + 1))
echo "your may eat ${eat[${check}]}"
