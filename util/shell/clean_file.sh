#!/bin/bash
filename=$1
ROOT_UID=0 # $UID=0ʱ���û��ž���root�û���Ȩ��
LINES=50   # Ĭ�ϵı�������
E_XCD=66  # �����޸�Ŀ¼
E_NOTROOT=67  #��root�û�����error�˳�

if [ "$UID" -ne "$ROOT_UID" ]
then
   echo "Must be root to run this script."
   exit $E_NOTROOT
fi

if [ -n "$filename" ];then
	lines=$1
	echo "file name is empty."
else
	lines=$LINES #Ĭ�ϣ����������������ָ�
fi

if [ -f $filename ];then
	cat /dev/null > $filename
	echo "$filename cleaned up."
else
	echo "$filename is not exsist."
fi
