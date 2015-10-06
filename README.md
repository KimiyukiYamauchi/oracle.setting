# oracle.2015
本リポジトリはDatabase2(オラクル)の授業に関する情報を共有するために使用する

## オラクルサーバへの接続するための環境設定手順

1. 「[Oracleインスタントクライアントのダウンロード](http://www.oracle.com/technetwork/jp/topics/index-099943-ja.html)から以下をダウンロードし、展開。<br />
「instantclient_12_1」ディレクトリが作成されていることを確認
	* instantclient-basic-linux.x64-12.1.0.2.0.zip
	* instantclient-sqlplus-linux.x64-12.1.0.1.0.zip<br /><br />
1. 「非同期IO(libio)」のインストール<br />
$ sudo aptitude install libaio1<br /><br />
1. 「リードラインラッパー(rlwrap)」のインストール<br />
$ sudo aptitude install rlwrap<br /><br />
1. 「[oracle.2015](https://github.com/KimiyukiYamauchi/oracle.2015.git)」を「git clone」
<br />$ git clone https://github.com/KimiyukiYamauchi/oracle.2015.git (任意のディレクトリ名)<br /><br />
1. cloneしたリポジトリに移動<br /><br />
2. リモートリポジトリ「origin」を別の名前に変える
<br />$ git remote rename origin oracle.2015<br /><br />
3. 各自のGithubに演習をアップするためのリポジトリを作成<br /><br />
4. 上で作成したリモートリポジトリに「origin」と名前をつける
<br />$ git remote add origin (各自のリモートリポジトリのURL)<br /><br />
5. ローカルリポジトリをリモートのpushする
<br />$ git push -u origin master<br /><br />
6. Oracleサーバへの接続確認
	1. 接続のためのスクリプトを作成<br />
$ vi sqlplus.sh<br >
で、ファイルを開き、以下を入力。<br />
この時、「instantclient_12_1」ディレクトリのパスは各自の環境に<br />
沿って、記述すること<br /><br />
LD_LIBRARY_PATH=/home/yamauchi/instantclient_12_1<br />
PATH=/home/yamauchi/instantclient_12_1:$PATH<br />
NLS_LANG=JAPANESE_JAPAN.AL32UTF8<br />
export LD_LIBRARY_PATH PATH NLS_LANG<br />
export no_proxy=localhost,172.16.40.4<br />
echo -n "ユーザ名："<br />
read user<br />
stty -echo<br />
echo -n "パスワード："<br />
read pass<br />
stty echo<br />
rlwrap sqlplus $user/$pass@172.16.40.4:1521/db11<br /><br />
	2. 作成したスクリプトを実行し、接続できること<br />
$ ./sqlplus.sh<br />
ユーザ名：hr<br />
パスワード：hr (パスワードの入力はエコーバックしないので注意！)<br />
=> これで接続できること！ <br /><br />
6. 各自の環境の設定
	1. 各自のアカウントでサーバに接続<br />
$ ./sqlplus.sh<br />
ユーザ名：(学籍番号)<br />
パスワード：password (パスワードの入力はエコーバックしないので注意！)<br />
=> 各自のアカウントで接続される <br /><br />
	1. テーブルを作成するためのスクリプトを実行<br />
SQL> @create_tbl_oracle.sql<br /><br />
	1. 以下のSELECT文を実行し、テーブルが作成できていることを確認<br />
また、それぞれのテーブルに対して、SELECT文を実行し、データがちゃんと入っていることを確認<br />
SQL> select table_name from user_tables;<br />
SQL> select tname from tab;

		- ORDERS
		- ORD_DETAILS
		- SALGRADES
		- EMPLOYEES
		- PRODUCTS
		- CUSTOMERS
		- DEPARTMENTS