#!/bin/bash
filename=$1
ROOT_UID=0 # $UID=0时，用户才具有root用户的权限
LINES=50   # 默认的保存行数
E_XCD=66  # 不能修改目录
E_NOTROOT=67  #非root用户将以error退出

if [ "$UID" -ne "$ROOT_UID" ]
then
   echo "Must be root to run this script."
   exit $E_NOTROOT
fi

if [ -n "$filename" ];then
	lines=$1
	echo "file name is empty."
else
	lines=$LINES #默认，如果不在命令行中指令。
fi

if [ -f $filename ];then
	cat /dev/null > $filename
	echo "$filename cleaned up."
else
	echo "$filename is not exsist."
fi
