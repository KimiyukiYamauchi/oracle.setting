#!/bin/sh

# 各自の環境に合わせて記述
LD_LIBRARY_PATH=${HOME}/instantclient_18_3
PATH=${HOME}/instantclient_18_3:$PATH

# 以降は共通
NLS_LANG=JAPANESE_JAPAN.AL32UTF8
export LD_LIBRARY_PATH PATH NLS_LANG
#export no_proxy=localhost,192.168.30.4
echo -n "ユーザ名："
read user
stty -echo
echo -n "パスワード："
read pass
stty echo
#rlwrap sqlplus $user/$pass@192.168.30.3:1521/orcl @/home/application/repo/oracle.setting/login.sql
#rlwrap sqlplus $user/$pass@172.16.40.4:1521/orcl @/home/application/repo/oracle.setting/login.sql
rlwrap sqlplus $user/$pass@192.168.30.3:1521/plug19
