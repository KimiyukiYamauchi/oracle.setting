LD_LIBRARY_PATH=/home/application/instantclient_18_3
PATH=/home/application/instantclient_18_3:$PATH
NLS_LANG=JAPANESE_JAPAN.AL32UTF8
export LD_LIBRARY_PATH PATH NLS_LANG
export no_proxy=localhost,192.168.30.4
echo -n "ユーザ名："
read user
stty -echo
echo -n "パスワード："
read pass
stty echo
rlwrap sqlplus $user/$pass@172.16.40.4:1521/orcl