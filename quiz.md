# オラクル小テスト

## 11/24

1. ビューを使用する目的として正しくないものを選びなさい．

	1. データアクセスを制限
	1. 複雑な組合せの簡素化
	1. パフォーマンスの向上
	1. データの独立性の確保
	1. 同じデータ異なるビューの提供  
	<br>
	=> 3
	<br>

1. 複合ビューに関する説明として誤っているものを選びなさい．

	1. 1つまたは複数の表からデータを算出する
	1. 関数を含む
	1. ビューを通して条件なしでINSERT、UPDATEおよびDELETE操作を  
	実行できる
	1. データのグループを含む  
	<br>
	=> 3
	<br>

1. EMP表から、部門番号(DEPTNO列)が10である部門に所属する社員の  
情報を検索したい．ビューを作成する文として正しいものを選びなさい．

	1. create view emp_v10 from select * from emp where  
	deptno=10;
	1. create view emp_v10 (as select * from emp where  
	deptno=10);
	1. create view emp_v10 select * from emp where  
	deptno=10;
	1. create view emp_v10 as select * from emp where  
	deptno=10;  
	<br>
	=> 4
	<br>

1. 以下のCREATE VIEW文で定義したビューの列名として正しいものを選びなさい．

	create view emp_v as select empno,ename,sal*12 from emp  
	where deptno=10;

	1. EMPNO ENAME SAL*12
	1. EMPNO ENAME
	1. EMPNO ENAME #########
	1. エラーとなる  
	<br>
	=> 4
	<br>

1. 順序DEPT_SEQを作成する文として正しいものを次の中から選びなさい．

	1. create synonym dept_seq;
	1. create number dept_seq;
	1. create table dept_seq;
	1. create sequence dept_seq;  
	<br>
	=> 4
	<br>

1. 順序に関する説明として正しいものを3つ選びなさい．

	1. プログラム開発コストを低減するために活用できる
	1. メモリキャッシュに格納して、信頼性を向上できる
	1. 通常、主キー値の生成で使用される
	1. 順序値もロールバックされる
	1. システムクラッシュが発生すると、メモリにキャッシュしていた  
	番号は欠番となる  
	<br>
	=> 1, 3, 5
	<br>

1. 順序(DEPTNO_SEQ)を使いDEPT表にデータを作成する場合のINSERT文  
として正しいものを選びなさい．

	1. insert into dept(deptno,dname)  
	values(nextval(deptno_seq),'SALES');
	1. insert into dept(deptno,dname)  
	values(nextval.deptno_seq,'SALES');
	1. insert into dept(deptno,dname)  
	values(deptno_seq.nextval,'SALES');
	1. insert into dept(deptno,dname)  
	values(deptno_seq(nextval),'SALES');  
	<br>
	=> 3
	<br>

1. EMP表のEMPNO列とSAL列の組み合わせで、索引EMP\_SAL_IDXを作成  
する文として正しいものを選びなさい．

	1. create index emp\_sal_idx emp(empno,sal);
	1. create index emp\_sal_idx emp on (empno,sal);
	1. create index emp.emp\_sal_idx on (empno,sal);
	1. create index emp\_sal_idx on emp(empno,sal);  
	<br>
	=> 4
	<br>

1. 索引に関する説明として誤っているものを選びなさい．

	1. 一意な索引を定義した列に、同じ値は許可されない
	1. 外部キー列に索引を作成し、結合処理を速めることができる
	1. NULL値は一意な索引では許可されないが、一意でない索引では  
	許可される
	1. 制約により自動的に作成される索引の索引名は、制約の名前となる  
	<br>
	=> 3
	<br>

1. プライベートシノニムを削除する文として正しいものを選びなさい．

	1. drop private synonym big_emp;
	1. drop synonym big_emp;
	1. drop public synonym big_emp;  
	<br>
	=> 2
	<br>

## 11/19

1. 表を作成するユーザーにとって必要なものを2つ選びなさい．

	1. データベース管理者
	1. 記憶域
	1. 順序
	1. CREATE TABLE権限  
	<br>
	=> 2, 4
	<br>

1. スキーマに関する説明として誤っているものを次の中から選びなさい．

	1. 所有するオブジェクトの集合を消す
	1. SQL文では、他のユーザーが所有するオブジェクトにはそのスキーマ名を  
	接頭辞として付ける
	1. SQL文で、スキーマ名のデフォルトはSYSTEMである
	1. スキーマが異なれば同じ表名であってもエラーにならない  
	<br>
	=> 3
	<br>

1. スキーマオブジェクトの指定方法として正しいものを選びなさい．

	1. スキーマ名.オブジェクト名
	1. スキーマ名_オブジェクト名
	1. オブジェクト名.スキーマ名
	1. オブジェクト名_スキーマ名  
	<br>
	=> 1
	<br>

1. VARCHAR2型の説明として正しいものを次の中から選びなさい．

	1. VARCHAR2(SIZE)では、sizeを超えるデータはエラーとなる
	1. VARCHAR2(SIZE)では、size未満のデータはベースを後ろに加え、  
	sizeまで拡張されて格納される
	1. 指定できる値の範囲は、1<=size<=2000である
	1. sizeのデフォルトは1である  
	<br>
	=> 1
	<br>

1. CHAR型の説明として誤っているものを次の中から選びなさい．

	1. CHAR(SIZE)では、sizeを超えるデータはエラーとなる
	1. CHAR(SIZE)では、size未満のデータはスペースを後ろに加え、  
	sizeまで拡張されて格納される
	1. 指定できる値の範囲は、1<=size<=2000である
	1. sizeは省略できない  
	<br>
	=> 4
	<br>

1. NUMBER(p,s)型の説明として誤っているものを次の中から選びなさい．

	1. pは精度であり、10進数桁の総数を表す．指定範囲は1<=p<=38である
	1. sは位取りで、小数点以下の桁数を表す．指定範囲は-84<=s<=127である
	1. NUMBER(p)とすると、小数点データは格納できない
	1. pは省略できない  
	<br>
	=> 4
	<br>

1. UNIQUE制約の定義でエラーになる文を2つ選びなさい．

	1. create table emp (empno number(6) unique);
	1. create table emp (empno number(6) constraint  
	emp\_ename_uq unique);
	1. create table emp (empno number(6) constraint  
	emp\_ename_uq unique(empno));
	1. create table emp (empno number(6), constraint  
	emp\_ename_uq unique(empno));
	1. create table emp (bank_no number(3)  
	unique(bank\_no,accout\_no),account_no number(6));
	1. create table emp (bank\_no number(3), account\_no  
	number(6), constraint emp\_bank\_no\_account\_no_uq  
	unique(bank\_no,account_no));  
	<br>
	=> 3, 5
	<br>

1. PRIMARY KEY制約の定義でエラーになる文を選びなさい．

	1. create table emp (empno number(6) primary key);
	1. create table emp (empno number(6) constraint  
	emp\_ename_pk primary key(empno));
	1. create table emp (empno number(6) ,constraint  
	emp\_ename_uq primary key(empno));
	1. create table emp (bank_no number(3),acount_no  
	number(6), constraint emp\_bank_no_account\_no_uq  
	primary key(bank\_no,accoun_no));  
	<br>
	=> 2
	<br>

1. FOREIGN KEY制約を定義したい．DEPTNO列がDEPT表の主キーである  
場合、エラーになる文を選びなさい．

	1. create table emp (deptno number(6) constraint  
	deptno_fk references dept(deptno));
	1. create table emp (deptno number(6) references  
	dept);
	1. create table emp (deptno number(6) constraint  
	deptno_fk foreign key(deptno) references  
	dept(deptno));
	1. create table emp (deptno number(6), constraint  
	deptno_fk foreign key(deptno) references  
	dept(deptno));  
	<br>
	=> 3
	<br>

1. CHECK制約を定義したい．正常に実行できる文を2つ選びなさい．

	1. create table emp (empno number(6)  
	check(empno>sal),sal number(6));
	1. create table emp (hiredate date constraint  
	date_ck check(hiredate>sysdate-1));
	1. create table emp (empno number(6) constraint  
	ename_ck check(empno>1000));
	1. create table emp (empno number(6) ,  
	check(empno>sal),sal number(6));
	1. create table emp (empno number(6) ,  
	check(empno>rownum),sal number(6));  
	<br>
	=> 3, 4
	<br>


## 11/18

1. 3つの列(EMPNO列、ENAME列、SAL列)で構成されているEMP表に  
新しいデータを挿入するINSERT文として正しいものを選びなさい．

	1. insert into emp(empno,ename)  
	values(1000,'KING',3000);
	1. insert into emp(empno,ename,sal)  
	values(1000,'KING');
	1. insert into emp(empno,ename,sal)  
	values(1000,'KING',3000);
	1. insert into emp values(1000,'KING');
	1. insert into emp  
	values(&empno,'&ename',&sal,&deptno);  
	<br>
	=> 3
	<br>

1. EMP表は3つの列(EMPNO列、ENAME列、SAL列)で構成されている．  
次のINSERT文の中から、ENAME列にNULL値を設定しないものを選びなさい．  
ただし、ENAME列のデータ型はVARCHAR2(20)であり、デフォルトはNULLとする．

	1. insert into emp(emp,sal) values(1000,2400);
	1. insert into emp values(1000,,2400);
	1. insert into emp values(1000,NULL,2400);
	1. insert into emp values(1000,DEFAULT,2400);  
	<br>
	=> 2
	<br>

1. 以下のような列定義のEMP表にデータを挿入したい．次のINSERT文から  
正しいものを選びなさい．
	<EMP表>

	|列名|データ型|
	|:--|:-----|
	|EMPNO|NUMBER(6)|
	|ENAME|VARCHAR2(10)|
	|SAL|NUMBER(5,2)|
	|HIREDATE|DATE(日付書式はRR-MM-DD)|

	1. insert into emp  
	values(221000,'TAYLOR',1010.6,sysdate);
	1. insert into emp values(221000,'TAYLOR',880.60,  
	'02-04-01')
	1. insert into emp values(221000,TAYLOR,880.60,  
	02-04-01);
	1. insert into emp values(221000,TAYLOR,880.60,  
	'02-04-01');  
	<br>
	=> 2
	<br>

1. EMP表を更新する以下のUPDATE文に関する説明として正しいものを選びなさい  

	update emp set mgr=2586,job=null,deptno=default,  
	sal=(select sal from emp where empno=3000)  
	where empno=2000;

	1. set句ではNULL、DEFAULTキーワードは指定できないのでエラーとなる
	1. EMPNO列値が2000であるデータが表内になければエラーとなる
	1. EMPNO列値が2000であるデータが表内になければ全データが更新される
	1. EMPNO列値が3000であるデータが表内になければ、SAL列にNULL値を設定する  
	<br>
	=> 4
	<br>

1. EMP表から全データを削除するDELETE文として正しいものを2つ選びなさい．

	1. delete emp;
	1. delete * from emp;
	1. delete from emp where 1<> 2;
	1. delete from emp where 1=2;  
	<br>
	=> 1, 3

1. 以下の順番でSQL文を発行した．直後の状態として正しい説明を2つ選びなさい．

	<SQLの発行順\>  
	① INSERT文  
	② SAVEPOINT S1;  
	③ DELETE文  
	④ SAVEPOINT S2;  
	⑤ UPDATE文  
	⑥ ROLLBACK TO S1;  

	1. S1、S2とも有効である
	1. S1は有効、S2は無効となる
	1. S1、S2とも無効となる
	1. DELETE文およびUPDATE文の変更はロールバックされる  
	<br>
	=> 2, 4
	<br>

1. 自動ロールバックされるイベントとして正しいものを次の中から2つ選びなさい．

	1. SQL*Plusの異常終了
	1. DDL文の発行
	1. EXIT文によるSQL*Plus終了
	1. システム障害  
	<br>
	=> 1, 4

1. 読み取り一貫性に関する説明として誤っているものを選びなさい

	1. 同一データに対するUPDATE、INSERTおよびDELETE文はロック待ちになる
	1. 同一データに対するSELECT文はロック待ちになる
	1. 読み取り一貫性実現のためUNDOセグメントが使われている
	1. ほかのトランザクションで更新中のデータをSELECT文によって検索すると、  
更新前のコミットされたデータが戻される  
	<br>
	=> 2
	<br>

1. 以下のSELECT文に関する説明として正しいものを選びなさい．

	select empno,ename,sal from emp where depto=30  
	for update wait 10 order by empno;

	1. EMP表が排他ロックされる
	1. EMP表のDEPTNO列に30の値を持つ行が10秒間だけ排他ロックされる
	1. このSELECT文では一切排他ロックされない
	1. 検索対象の行が他のユーザーによってすでにロックされている場合は  
	そのロックの解放を10秒間だけ待機する  
	<br>
	=> 4
	<br>

1. YOUNGの昇進・異動に伴い、EMP表のYOUNGのデータを更新しようとしたところ  
エラーになった．目的の更新を行うためにUPDATE文を変更する必要がある．  
最も適切な変更方法を選びなさい．

	update (select empno,ename,sal,job,deptno from emp  
	where deptno=20 with check option)  
	set sal=sal*1.2,job='MANAGER',deptno=30  
	where empno=3000 and ename='YOUNG';

	1. WITH CHECK OPTIONを削除する
	1. sal=sal*1.2を削除する
	1. dept=30を削除する
	1. empno=3000を削除する  
	<br>
	=> 1
	<br>


## 11/17

1. 集合演算子に関する説明として正しいものを選びなさい．

	1. UNIONは、各問合せによって戻される重複を含むすべての行を戻す
	1. UNION ALLは、各問合せによって戻される重複を含まない  
	すべての行を戻す
	1. INTERSECTは、両方の問合せによって戻される重複を含まない  
	すべての行を戻す
	1. MINUSは、最初の問合せによって戻され、2番目の問合せでは戻されない  
	重複を含むすべての行を戻す  
	<br>
	=> 3
	<br>

1. 集合演算子を使うときの各問合せに関する説明として正しいものを選びなさい．

	1. SELECT句の対応する列のデータ型の種類(文字型、数値型、日付型など)  
	は異なってもよい
	1. SELECT句の選択する列の数は同じでなければならない．
	1. SELECT句の対応する列名は同じでなければならない．
	1. SELECT句の対応する列のサイズは同じでなければならない．  
	<br>
	=> 2
	<br>
---

	問題3~10は、以下の資料を参照して解答してください．  

	① EMP表は社員の現在の情報を格納する

	``` desc emp ```

	|名前|NULL?|型|
	|:--|:----|:-|
	|EMPNO|NOT NULL|NUMBER(6)|
	|ENAME|NOT NULL|VARCHAR2(10)|
	|S_DATE||DATE|
	|DEPTNO||NUMBER(2)|

	``` select * from emp; ```

	|EMPNO|ENAME|S_DATE|DEPTNO|
	|:----|:----|-----:|----:|
	|100001|SCOTT|1990-10-01|20|
	|100002|KING|2003-04-01|10|
	|100003|JAMES|1980-04-01|30|
	|100004|MILLER|(NULL)|(NULL)|
	|100005|SUGER|(NULL)|(NULL)|

	② DEPT_HISTは過去の所属情報を格納する

	``` desc dept_hist ```

	|名前|NULL?|型|
	|:--|:----|:-|
	|EMPNO|NOT NULL|NUMBER(6)|
	|S_DATE|NOT NULL|DATE|
	|E_DATE|NOT NULL|DATE|
	|DEPTNO||NUMBER(2)|

	``` select * from dept_hist; ```

	|EMPNO|S\_DATE|E_DATE|DEPTNO|
	|:----|------:|-----:|----:|
	|100001|1970-04-01|1980-09-30|20|
	|100002|1964-04-01|2003-03-31|30|
	|100001|1980-10-01|1990-09-30|30|
	|100006|2002-04-01|2002-05-31|(NULL)|

1. 以下の副問合せの結果として正しいものを選びなさい

	select empno,deptno from emp  
	union  
	select empno,deptno fromt dept_hist;

	A.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|20|
	|100001|20|
	|100001|30|
	|100002|10|
	|100002|30|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|
	|100006|(NULL)|

	9行が選択されました．

	B.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|20|
	|100002|10|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|
	|100002|30|
	|100001|30|
	|100006|(NULL)|

	8行が選択されました．

	C.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|20|
	|100001|30|
	|100002|10|
	|100002|30|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|
	|100006|(NULL)|

	8行が選択されました．

	D.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|20|
	|100002|10|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|
	|100001|20|
	|100002|30|
	|100001|30|
	|100006|(NULL)|

	9行が選択されました．  
	<br>
	=> C
	<br>

1. 以下の複合問合せの結果として正しいものを選びなさい．

	select deptno from emp  
	union  
	select deptno from dept_hist;

	A.

	|DEPTNO|
	|-----:|
	|10|
	|20|
	|30|
	|(NULL)|

	4行が選択されました．

	B.

	|DEPTNO|
	|-----:|
	|20|
	|10|
	|30|
	|(NULL)|
	|(NULL)|
	|20|
	|30|
	|30|
	|(NULL)|

	9行が選択されました．

	C.

	|DEPTNO|
	|-----:|
	|20|
	|10|
	|30|
	|(NULL)|

	4行が選択されました．

	D.

	|DEPTNO|
	|-----:|
	|20|
	|10|
	|30|

	3行が選択されました．  
	<br>
	=> A
	<br>

1. 以下の複合問合せの結果として正しいものを選びなさい．

	select empno,deptno from emp  
	union all  
	select empno,deptno from dept_hist;

	A.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|20|
	|100001|20|
	|100001|30|
	|100002|10|
	|100002|30|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|
	|100006|(NULL)|

	9行が選択されました．

	B.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|20|
	|100002|10|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|
	|100002|30|
	|100001|30|
	|100006|(NULL)|

	8行が選択されました．

	C.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|20|
	|100002|10|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|
	|100001|20|
	|100002|30|
	|100001|30|
	|100006|(NULL)|

	9行が選択されました．

	D.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|20|
	|100001|30|
	|100002|10|
	|100002|30|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|
	|100006|(NULL)|

	8行が選択されました．  
	<br>
	=> C
	<br>

1. 以下の副問合せの結果として正しいものを選びなさい．

	select deptno from emp  
	union all  
	select deptno from dept_hist;  

	A.

	|DEPTNO|
	|-----:|
	|20|
	|10|
	|30|
	|20|
	|30|
	|30|

	6行が選択されました．

	B.

	|DEPTNO|
	|-----:|
	|10|
	|20|
	|30|
	|(NULL)|

	4行が選択されました．

	C.

	|DEPTNO|
	|-----:|
	|20|
	|10|
	|30|
	|(NULL)|
	|(NULL)|
	|20|
	|30|
	|30|
	|(NULL)|

	9行が選択されました．

	D.

	|DEPTNO|
	|-----:|
	|10|
	|20|
	|20|
	|30|
	|30|
	|30|
	|(NULL)|
	|(NULL)|
	|(NULL)|

	9行が選択されました．  
	<br>
	=> C
	<br>

1. 以下の複合問合せの結果として正しいものを選びなさい．

	select empno,deptno from emp  
	intersect  
	select empno,deptno from dept_hist;

	A.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100002|10|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|

	4行が選択されました．

	B.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|20|

	1行が選択されました．

	C.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|30|
	|100002|30|
	|100006|(NULL)|

	3行が選択されました．

	D.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|30|
	|100002|10|
	|100002|30|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|
	|100006|(NULL)|

	7行が選択されました．  
	<br>
	=> B
	<br>

1. 以下の複合問合せの結果として正しいものを選びなさい．

	select deptno from emp  
	intersect  
	select deptno from dept_hist;

	A.

	|DEPTNO|
	|-----:|
	|20|
	|30|
	|(NULL)|

	3行が選択されました．

	B.

	|DEPTNO|
	|-----:|
	|30|
	|20|
	|(NULL)|

	3行が選択されました．

	C.

	|DEPTNO|
	|-----:|
	|10|

	1行が選択されました．

	D.

	|DEPTNO|
	|-----:|
	|20|
	|30|

	2行が選択されました．  
	<br>
	=> A  
	<br>


1. 以下の複合問合せの結果として正しいものを選びなさい．

	select empno,deptno from emp  
	minus  
	select empno,deptno from dept_hist;

	A.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|30|
	|100002|10|
	|100002|30|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|
	|100006|(NULL)|

	7行が選択されました．

	B.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|20|

	1行が選択されました．

	C.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100001|30|
	|100002|30|
	|100006|(NULL)|

	3行が選択されました．

	D.

	|EMPNO|DEPTNO|
	|----:|-----:|
	|100002|10|
	|100003|30|
	|100004|(NULL)|
	|100005|(NULL)|

	4行が選択されました．  
	<br>
	=> D  
	<br>

1. 以下の場合問合せの結果を選びなさい．

	select deptno from emp  
	minus  
	select deptno from dept_hist;

	A.

	|DEPTNO|
	|-----:|
	|10|

	1行が選択されました．

	B.

	レコードが選択されませんでした．

	C.

	|DEPTNO|
	|-----:|
	|10|
	|(NULL)|

	2行が選択されました．

	D.

	|DEPTNO|
	|-----:|
	|(NULL)|
	|10|

	2行が選択されました．  
	<br>
	=> A  
	<br>

## 11/12

1. 副問い合わせが使用できる句を次の中から3つ選びなさい

	1. SELECT句
	1. FROM句
	1. WHERE句
	1. ORDER BY句
	1. GROUP BY句
	1. HAVING句  
	<br>
	=> 2, 3, 6
	<br>

1. 以下のEMP表から副問い合わせを使って検索したときに、エラーとなる  
SELECT文を次の中から2つ選びなさい．

	[EMP表]

	|EMPNO|ENAME|SAL|JOB|DEPTNO|
	|----:|:----|--:|:--|-----:|
	|1000|SCOTT|1000|CLERK|10|
	|1010|ADAMS|2000|SALESMAN|10|
	|1030|TAYLOR|600|SALESMAN|30|
	|1050|MILLER|800|CLERK|10|

	1. select ename from emp where job = (select distinct  
	job from emp);
	1. select ename from emp where deptno = (select  
	deptno from emp where ename = 'ADAMS');
	1. select ename from emp where deptno = (select  
	deptno from emp group by deptno);
	1. select ename from emp where deptno = (select  
	deptno from emp group by deptno having  
	count(*)>1);  
	<br>
	=> 1, 3
	<br>

1. ある条件の社員を検索する以下のSELECT文がエラーになった．原因として  
考えられるものを選びなさい．

	select empno,ename from emp where deptno = (select depto  
	from emp where sal= (select max(sal) from emp));

	1. まだ配属先が決まっていない新人がいる
	1. sal列値がNULLの社員がいる
	1. 最高給与をもらっている社員が2人いる
	1. 新設の部門があり、所属する社員がまだいない  
	<br>
	=> 3
	<br>

1. 以下のSELECT文で、EMP表からある条件の部門番号を検索する．次の中から  
正しい説明を2つ選びなさい．

	select deptno from emp group by deptno having avg(sal) =  
	(select max(avg(sal)) from emp group by deptno);

	1. 比較演算子=の変わりにINを使っても結果は同じである
	1. 平均給与が最も高い部門が2つあるとエラーになる
	1. DEPTNOの列値が1種類だけなら、検索されるデータは0県である
	1. 平均給与が最も高い部門の番号を検索する  
	<br>
	=> 1, 4
	<br>

1. 比較演算子INと同じ働きをする演算子を選びなさい．

	1. =ALL
	1. <>ALL
	1. =ANY
	1. <>ANY  
	<br>
	=> 3
	<br>

1. EMP表のSAL列値はそれぞれ600、800、1000、2000である．以下のSELECT文を実行すると  
何件のデータが検索されるか．次の中から選びなさい．

	select sal from emp where sal<= all (700,900,1600);

	1. 0
	1. 1
	1. 2
	1. 3
	1. 4  
	<br>
	2
	<br>
---

	\[EMP表](資料)

	|EMPNO|ENAME|SAL|MGR|DEPTNO|
	|----:|:----|--:|--:|-----:|
	|1000|SCOTT|1000||10|
	|1010|ADAMS|2000|1000|10|
	|1030|TAYLOR|600|1000|30|
	|1050|MILLER|800|1030|10|

1. 上記EMP表で、以下の副問い合わせを使ったSELECT文を実行した．  
検索されるデータ件数を選びなさい．

	select empno,ename from emp where empno not in(select  
	mgr from emp);

	1. 0
	1. 1
	1. 2
	1. 3  
	<br>
	=> 3
	<br>

1. 上記EMP表で、以下の副問い合わせを使ったSELECT文を実行した．  
検索されるデータ件数を選びなさい．

	select empno,ename from emp where empno not in (select  
	mgr from emp where mgr is not null);

	1. 0
	1. 1
	1. 2
	1. 3  
	<br>
	=> 3
	<br>

1. EMP表にはEMPNO列、ENAME列、SAL列、JOB列、DEPTNO列がある．  
副問合せを使う必要がある作業はどれか．次の中から選びなさい．

	1. 最高給与の社員を検索する
	1. 部門番号10の部門の平均給与を求める
	1. 部門別の最高平均給与を求める
	1. 社員番号1050のSALを1.5倍にする  
	<br>
	=> 1
	<br>

1. 以下の2つの表がある場合、副問合せまたは結合を使う作業を4つ選びなさい．

 	[EMP表]

	|EMPNO|ENAME|JOBNO|SAL|DEPTNO|
	|----:|:----|----:|--:|-----:|
	|1000|ADAMS|100|1000|10|
	|1010|MILLER|200|1200|10|
	|1020|SCOTT|100|800|30|

	[DEPT表]

	|DEPTNO|DNAME|EMPNO|
	|-----:|:----|----:|
	|10|PERSONNEL|1000|
	|20|ACCOUNT||
	|30|DESIGN||

	1. EMP表から部門番号30に所属する社員だけのEMP30表を作成する
	1. EMP表から部門別の人数を調べる
	1. MILLERのSL列値をSCOTTと同じSAL列値に更新する
	1. EMP表から部門番号30に所属する社員だけのEMPVIEW30ビュー  
	を作成する
	1. EMP表のMILLERのデータを、部門番号30に所属する社員だけの  
	EMP30表へコピーする
	1. EMP表から部門別の人数を降順に検索する  
	<br>
	=> 1, 3, 4, 5
	<br>

## 11/11

1. EMP表(10行)とDEPT表(5行)のクロス結合で生成される行数を選びなさい．  

	1. 5
	1. 10
	1. 15
	1. 50  
	<br>
	=> 4
	<br>

1. 以下のSELECT文を実行するとエラーとなる．次の中から原因として考えられる  
ものを選びなさい．なお、EMP表とDEPT表には共通列としてDEPTNOがあるものとする．

	select empno,ename,deptno,dname  
	from emp join dept on emp.deptno=dept.deptno  
	order by empno.

	1. 表別名を指定していない
	1. SELECT句のDEPTNOを表名で修飾していない
	1. 結合ではORDER BY句は指定できない
	1. 結合条件に誤りがある  
	<br>
	=> 2
	<br>

1. 以下の3つの表を結合するSELECT文として誤っているものを選びなさい．

	[EMP表]

	|EMPNO|ENAME|JOBNO|SAL|DEPTNO|
	|----:|:----|----:|--:|-----:|
	|1000|ADAMS|100|1000|10|
	|1010|MILLER|200|1200|10|
	|1020|SCOTT|300|800|30|

	[JOB表]

	|JOBNO|JNAME|
	|----:|:----|
	|100|CLERK|
	|200|MANAGER|
	|300|SALESMAN|

	[DEPT表]

	|DEPTNO|DNAME|
	|----:|:----|
	|10|PERSONNEL|
	|20|ACCOUNT|
	|30|DESIGN|

	1. select e.empno,e.ename,j.jname,e.sal,d.dname  
	from emp e join job j e.jobno=j.jobno  
	join dept d on j.deptno=d.deptno;
	1. select empno,ename,jname,sal,dname  
	from emp natural join job natural join dept;
	1. select empno,ename,jname,sal,dname  
	from dept natural join job natural join emp;
	1. select e.empno,e.ename,j.jname,e.sal,dname  
	from emp e join job j on e.jobno=j.jobno  
	natural join dept;  
	<br>
	=> 1
	<br>

1. 以下の3つの表の結合に関して、設問(1)~(4)の解答を解答郡から選びなさい．

	[EMP表]

	|EMPNO|ENAME|MGR|SAL|DEPTNO|
	|----:|:----|--:|--:|-----:|
	|1000|ADAMS|1010|1000|10|
	|1010|MILLER|1020|1200|10|
	|1020|SCOTT||800|30|

	[SALGRADE表]

	|GRADE|LOSAL|HIGHSAL|
	|----:|----:|------:|
	|1|0|1000|
	|2|1001|2000|
	|3|2001|3000|

	[DEPT表]

	|DEPTNO|DNAME|
	|----:|:----|
	|10|PERSONNEL|
	|20|ACCOUNT|
	|30|DESIGN|

	<設問>  
	(1) 社員名と部門名を検索するために行う結合の種類を選びなさい．  
	<br>
	=> 3  
	<br>
	(2) 社員名と給与のグレードを検索するために行う結合の種類を選びなさい．  
	<br>
	=> 2  
	<br>
	(3) まだ社員が１人も所属していない部門も含めて、社員名と部門名  
	を検索するために行う結合の種類を選びなさい．  
	<br>
	=> 1  
	<br>
	(4) 社員の上司と部下の関係を検索するために行う結合の種類を  
	選びなさい  
	<br>
	=> 4  
	<br>

	<解答群>

	1. 外部結合
	1. 非等価結合
	1. 等価結合
	1. 自己結合

1. 自然結合(NATURAL JOIN)の説明として正しいものを2つ選びなさい．

	1. 2つの表の同じ列名の列に基いて結合を行う
	1. 同じ列名の列が複数存在する場合は、いずれかの列に等しい値を  
	持つ行を結合する
	1. 同じ列名の列が複数存在する場合はエラーとなる
	1. 同じ列名の列がない場合はCROSS JOINとなる  
	<br>
	=> 1, 4
	<br>

1. 以下に示すSELECT文でEMP表とDEPT表の自然結合を行うと何件のデータ  
が戻されるか．正しい件数を選びなさい．

	[EMP表]

	|EMPNO|ENAME|JOBNO|SAL|DEPTNO|
	|----:|:----|----:|--:|-----:|
	|1000|ADAMS|100|1000|10|
	|1010|MILLER|200|1200|10|
	|1020|SCOTT|100|800|30|

	[DEPT表]

	|DEPTNO|DNAME|EMPNO|
	|-----:|:----|----:|
	|10|PERSONNEL|1000|
	|20|ACCOUNT||
	|30|DESIGN||

	select empno,ename,dname from emp natural join dept;

	1. 0
	1. 1
	1. 2
	1. 3  
	<br>
	=> 2  
	<br>

1. 以下に示すSELECT文でEMP表とDEPT表の自然結合を行うと何件のデータ  
が戻されるか．正しい件数を選びなさい．

	[EMP表]

	|EMPNO|ENAME|JOBNO|SAL|DEPTNO|
	|----:|:----|----:|--:|-----:|
	|1000|ADAMS|100|1000|10|
	|1010|MILLER|200|1200|10|
	|1020|SCOTT|100|800|30|

	[DEPT表]

	|DEPTNO|DNAME|EMPNO|
	|-----:|:----|----:|
	|10|PERSONNEL|1000|
	|20|ACCOUNT||
	|30|DESIGN||

	select e.empno,ename,dname from emp e  
	join dept using(deptno);

	1. 0
	1. 1
	1. 2
	1. 3  
	<br>
	=> 4
	<br>

1. 以下のEMP表とDEPT表から、未配属の社員を含めて社員とその部門  
を検索するSELECT文を2つ選びなさい．

	[EMP表]

	|EMPNO|ENAME|JOBNO|SAL|DEPTNO|
	|----:|:----|----:|--:|-----:|
	|1000|ADAMS|100|1000|10|
	|1010|MILLER|200|1200||
	|1020|SCOTT|100|800|30|

	[DEPT表]

	|DEPTNO|DNAME|
	|-----:|:----|
	|10|PERSONNEL|
	|20|ACCOUNT|
	|30|DESIGN|

	1. select ename,dname from emp e,dept d where  
	e.deptno=d.deptno(+);
	1. select ename,dname from emp e,dept d where  
	e.deptno(+)=d.deptno;
	1. select ename,dname from emp e right outer join  
	dept d on (e.deptno=d.deptno);
	1. select ename,dname from emp e left outer join  
	dept d on (e.deptno=d.deptno);  
	<br>
	=> 1, 4  
	<br>

1. 以下のEMP表とDEPT表で、SELECT文を実行すると何件のデータが戻されるか．  
正しい件数を選びなさい．

	[EMP表]

	|EMPNO|ENAME|JOBNO|SAL|DEPTNO|
	|----:|:----|----:|--:|-----:|
	|1000|ADAMS|100|1000|10|
	|1010|MILLER|200|1200||
	|1020|SCOTT|100|800|30|

	[DEPT表]

	|DEPTNO|DNAME|
	|-----:|:----|
	|10|PERSONNEL|
	|20|ACCOUNT|
	|30|DESIGN|

	select ename,dname from emp e full outer join dept d  
	on (e.deptno=d.deptno);

	1. 0
	1. 2
	1. 3
	1. 4  
	<br>
	=> 4
	<br>

1. 以下の中から等価結合を使用するケースとして適しているものを選びなさい．

	1. 2つの表の一方の結合列に一致しない値を含む
	1. 2つの表は異なる値(ただし関連する値)を持つ
	1. 2つの表の両方の結合列に一致しない値を含む
	1. 2つの表は同じ値(外部キーで参照)を持つ  
	<br>
	=> 4
	<br>

## 11/10

1. 次のSELECT文の中から、実行するとエラーとなるものを3つ選びなさい．

	1. select avg(sal) from emp;
	1. select avg(sal) from emp where deptno=10;
	1. select deptno,avg(sal) from emp;
	1. select deptno,avg(sal) from emp group by deptno;
	1. select deptno,avg(sal) from emp  
	where avg(sal)>1000 group by deptno;
	1. select deptno,avg(sal) from emp group by deptno  
	having avg(sal)>1000;
	1. select count(\*) from emp group by count(\*);
	<br>
	=> 3, 5, 7
	<br>

1. EMP表のSAL列値がそれぞれ2000、NULL、1000である場合、以下の  
SELECT文の実行結果として正しいものを選びなさい．

	select avg(sal),sum(sal),avg(nvl(sal,0)),  
	avg(distinct nul(sal,0)) from emp;

	1. 1000 3000 1500 1000
	1. 1500 3000 1000 1500
	1. 1000 3000 1500 1500
	1. 1500 3000 1000 1000
	<br>	
	=> 4
	<br>

1. 以下のSCORE表で検索を実行すると結果はどうなるか．次の中から正しい  
ものを選びなさい

	[SCORE表]

	|EMPNO|ENAME|HIREDATE|SCORE|
	|----:|:----|:-------|----:|
	|1000|SCOTT|2001-04-12|50.00|
	|1010|ADAMS|2001-03-20|0.00|
	|1050|MILLER|2000-10-10|-35.00|

	select max(ename),min(hiredate),avg(score) from core;

	1. ADAMS 2000-10-10 -10.00
	1. SCOTT 2000-10-10 5.00
	1. SCOTT 2000-04-12 5.00
	1. SCOTT 2001-10-10 7.50
	<br>
	=> 2
	<br>

1. 以下のSELECT文と検索結果から、歩合給(COMM)に関する説明として  
正しいものを2つ選びなさい．

	select count(comm),count(*),count(distinct comm) from emp;  

	<検索結果\>  
	10 16 5  

	1. 何人かの社員は同一額の歩合給をもらっている
	1. 6人は歩合給をもらっていない
	1. 5人は歩合給をもらっていない
	1. 16人が歩合給をもらっている
	<br>
	=> 1, 2
	<br>

1. EMP表から、社員の住んでいる異なる市(CITY_NAME列)の数を調べたい．  
次の中から正しいSELECT文を選びなさい．

	1. select count(upper(city_name)) from emp;
	1. select count(upper(unique city_name)) from emp;
	1. select count(distinct upper(city_name)) from emp;
	1. select count(*) from emp group by upper(city_name);
	<br>
	=> 3
	<br>

1. 次のSELECT文の中からエラーにならないものを選びなさい．

	1. select ename,min(hiredate) from emp;
	1. select deptno dept, avg(sal) avgsal from emp  
	group by dept having avg(sal)>2000;
	1. select deptno dept,avg(sal) avgsal from emp  
	group by deptno having avgsal>2000;
	1. select deptno,job,max(sal) from emp group by deptno  
	having max(sal)>=3000;
	1. select deptno,avg(sal) from emp group by deptno  
	order by job;
	1. select avg(sal) from emp having avg(sal)>2000;
	<br>
	=> 6
	<br>


	---
	\[EMP表\](資料)

	|EMPNO|ENAME|SAL|JOB|DEPTNO|
	|----:|:----|--:|:--|-----:|
	|1000|SCOTT|1000|CLERK|10|
	|1010|ADAMS|2000|SALESMAN|10|
	|1030|TAYLOR|600|SALESMAN|30|
	|1050|MILLER|800|CLERK|10|

1. 上記資料のEMP表で、以下のSELECT文で検索を実行した結果として正しい  
ものを選びなさい．

	select min(avg(sal)) from emp group by deptno,job  
	having count(*)>1;

	1. 600
	1. 900
	1. 1300
	1. 2000
	<br>
	=> 2
	<br>

1. 上記資料のEMP表で、以下のグループ関数を使った検索を実行した結果として  
正しいものを選びなさい．

	select min(avg(sal)) from emp group by deptno, job;

	1. 600
	1. 900
	1. 2000
	1. エラー
	<br>
	=> 1
	<br>

1. EMP表のCITY_NAME列から社員の住所の分散および分布状況を調べたい．  
以下の中からより適切な文を選びなさい．

	1. select count(distinct city_name) cnt from emp  
	order by cnt;
	1. select distinct upper(city_name),count(*) cnt  
	from emp order by cnt;
	1. select city_name,count(*) cnt from emp group by  
	upper(city_name) order by cnt;
	1. select upper(city_name),count(*) cnt from emp  
	group by upper(city_name) order by cnt;
	<br>
	=> 4
	<br>

1. 次の列定義の場合に、エラーになるグループ関数の使い方を以下の中から  
選びなさい．

	<列定義\>  
	col1 number  
	col2 number  
	col3 number  

	1. select avg(col1,col2,col3) from ...
	1. select avg(col1),avg(col2),avg(col3) from ...
	1. select avg(col1+col2+col3) from ...
	1. select avg(col1)+avg(col2)+avg(col3) from ...
	<br>
	=> 1
	<br>


## 11/4

1. 単一行関数に関する説明として誤っているものをすべて選びなさい．

	1. 問い合わせから戻される各行を操作する
	1. ネストの深さに制限はない
	1. WHERE句で使用できない
	1. 1行ごとに1つの結果を戻す
	1. 引数に指定できるのは列名か定数のみである
	1. 入力したデータと同じデータ型の値を必ず戻す
	<br>
	=> 3, 5, 6
	<br>

1. 以下のSELECT文の実行結果として正しいものを選びなさい．

	【EMP表】(FIRST_NAME列、LAST_NAME列ともVARCHAR2型)

	|EMPNO|FIRST\_NAME|LAST_NAME|
	|:----|:----------|:--------|
	|1000 |SCOTT      |TIGER    |

	select empno, concat(first_name, last_name),  
	length(last_name),instr(first_name, 'T'),substr(last_name,2,3)  
	substr(first_name,-2) from emp where empno=1000;

	1. 1000 SCOTTTIGER 4 4 IG T
	1. 1000 SCOTTTIGER 5 4 IG I GER
	1. 1000 SCOTTTIGER 5 4 IGE TT
	1. 1000 SCOTTTIGER 4 2 IG TT
	<br>
	=> 3
	<br>

1. 次の数値関数の結果の中から正しい物を2つ選びなさい

	1. ROUND(320.125,2)の結果は320.13である
	1. MOD(1600,300)の結果は300である
	1. TRUNC(320.125)の結果は320である
	1. ROUND(320.125,-3)の結果は300である
	1. MOD(TRUNC(ROOUND(320.125,0),-1),100)の結果は0である
	<br>
	=> 1, 3
	<br>

1. 次の中からエラーとなる日付関数の指定方法を選びなさい．ただし、  
日付書式はYYYY-MM-DDとする．

	1. LAST_DAY('2002-02-01','2002-03-31')
	1. ADD_MONTHS('2002-09-15',-3)
	1. NEXT_DAY('2002-08-31','SUNDAY')
	1. NEXT_DAY('2002-08-31',3)
	<br>
	=> 1
	<br>

1. EMP表から、職種名(JOB列)の後ろから数えて3文字目から始まる2文字の  
中にAの文字を含まない職種の社員を検索したい．最も適切なSELECT文を  
選びなさい．なお、JOB列は必須列でNULLは存在しない．  
また、職種名の文字数は5文字以上とする．

	1. select empno, ename, job from emp  
	where instr(substr(job,-3,2),'A') is null;
	1. select empno, ename, job from emp  
	where instr(substr(job,2,-3),'A') is null;
	1. select empno, ename, job from emp  
	where instr(substr(job,-3,2),'A') = 0;
	1. select empno, ename, job from emp  
	where instr(substr(job,2,-3),'A') = 0;
	<br>
	=> 3
	<br>

1. 日付型HIRE_DATE列を以下の書式で表示する場合の指定方法として正しいもの  
を選びなさい．

	[表示例]  
	15 of September 2004 18:30:30 PM

	1. TO\_CHAR(hire_date, 'DD "of" MM YYYY HH24:MI:SS PM')
	1. TO\_CHAR(hire_date, 'DD "of" MONTH YYYY HH24:MI:SS PM')
	1. TO\_CHAR(hire_date, 'DD of Month YYYY HH24:MI:SS PM')
	1. TO\_CHAR(hire_date, 'DD "of" Month YYYY HH24:MI:SS AM')
	<br>
	=> 4
	<br>

1. TO_CHAR(0.25,'99.99')の実行結果として正しいものを選びなさい．

	1. 0.25
	1. 99.99
	1. 00.25
	1. □□.25(ピリオドの前に空白2つ)
	<br>
	=> 4
	<br>

1. 現在の日付は2002年9月15日である．以下のHIRE_DATE列のデータに対して、  
SELECT文①とSELECT文②を実行した場合に、検索されるデータ件数の差を選びなさい

	[HIRE_DATE列のデータ]  
	1980-04-01  
	1994-04-01  
	1998-04-01  
	2000-04-01  
	2002-04-01  

	[SELECT文①]  
	select hire_date from emp where hire_date > to_date('01-JAN-98', 'DD-MON-RR');

	[SELECT文②]  
	select hire_date from emp where hire_date > to_date('01-JAN-98', 'DD-MON-YY');

	1. 0
	1. 1
	1. 3
	1. 5
	<br>
	=> 3
	<br>

1. EMP表の歩合給(COMM列)にはNULL値が含まれている．全社員の平均歩合給commを  
求める式を選びなさい．

	1. AVG(comm)
	1. NVL(AVG(comm),0)
	1. AVG(NVL(comm,0))
	1. SUM(comm)/COUNT(comm)
	<br>
	=> 3
	<br>

1. 以下の関数の実行結果として正しいものを選びなさい．

	|列名|値|
	|:----|:------|
	|job列|SALESMAN|
	|SAL列|2000|

	DECODE(job,'PROG',1.10\*sal,'CLERK',1.20\*sal,'ACCOUNT',1.30*sal,sal)

	1. 2000
	1. 2400
	1. エラー
	1. NULL
	<br>
	=> 1
	<br>

## 10/29

1. 以下に示すEMP表でSELECT文を実行する．エラーとなるSELECT文を２つ  
選びなさい．  
[EMP表の列構成]  
EMPNO: 数値型  
ENAME: 文字型  
HIREDATE: 日付型(日付書式はデフォルト)
	1. select empno, ename, hiredate hdate from emp where  
	hdate >= '01-JAN-98';
	1. select empno, ename, hiredate from emp where  
	HIREDATE >= '01-JAN-98';
	1. select empno, ename, hiredate hdate from emp  
	order by hdate;
	1. select empno, ename, hiredate from emp where  
	'01-JAN-98' < hiredate < '31-DEC-98';  
	<br>
	=> 1, 4  
	<br>
1. HIREDATE列値が1998年4月1日である行を検索しない条件を選びなさい．  
但し、日付書式はデフォルトとする．
	1. where hiredate like '%98'
	1. where hiredate > '01-JAN-98'
	1. where hiredate between '01-JAN-98' and '01-JAN-99'
	1. where hiredate not between '01-JAN-98' and '01-JAN-99'  
	<br>
	=> 4  
	<br>
1. ID列の３文字目が文字列Mである行を検索する条件を選びなさい  
	1. where id = '__M%'(Mの前にアンダスコア２文字)
	1. where id like '__M%'(Mの前にアンダスコア２文字)
	1. where id like '□□M%'(Mの前に空白２文字)
	1. where id like '%M%'  
	<br>
	=> 2  
	<br>
1. ADAMSの職種(JOB列)はCLERK、給与(SAL列)は3000である  
ADAMSの行が検索される条件を２つ選びなさい．
	1. where job not in('SALESMAN', 'ACCOUNT')
	1. where sal not between 2000 and 3000
	1. where ename not like '%DAM'
	1. where not job = 'CLERK' and sal = 3000  
	<br>
	=> 1, 3  
	<br>
1. 以下のWHERE句と条件の同じものを選びなさい  
<p>where not deptno >= 20 and job = 'CLERK'</p>
	1. where not (deptno  >= 20 and job = 'CLERK')
	1. where deptno < 20 and job<> 'CLERK'
	1. where deptno <= 20 and job = 'CLERK'
	1. where deotno < 20 and job = 'CLERK'  
	<br>
	=> 4  
	<br>
1. EMP表のCOMM列には、100、200、NULL、180の値がそれぞれ設定  
されている．以下のSELECT文を実行すると何件のデータが検索されるか．  
<p>select * from emp where comm <> 200;</p>
	1. 0
	1. 1
	1. 2
	1. 3  
	<br>
	=> 3  
	<br>
1. 以下のWHERE句の条件と同じものを選びなさい．
<p>where job in('CLERK', 'ACCOUNT')</p>
	1. where job between 'CLERK' and 'ACCOUNT'
	1. where job = 'CLERK' or job = 'ACCOUNT'
	1. where job = 'CLERK' and job = 'ACCOUNT'
	1. where not job = 'CLERK' and not job = 'ACCOUNT'  
	<br>
	=> 2  
	<br>
1. 部門番号(DEPTNO列)の昇順に、さらに社員番号(EMPNO列)の昇順  
にソートする．正しいSELECT文を全て選びなさい．
	1. select ename from emp order by deptno, empno;
	1. select deptno, empno, ename from emp order by 1, 2;
	1. select deptno, empno, ename from emp  
	order by empno asc, deptno asc;
	1. select deptno, empno, ename from emp order by 1, empno;  
	<br>
	=> 1, 2, 4  
	<br>
1. 置換変数名の先頭に付ける記号として正しいものを2つ選びなさい
	1. %
	1. &
	1. @
	1. &&  
	<br>
	=> 2, 4  
	<br>
1. スクリプトファイルの中で以下のSQL文を使っている．スクリプトファイルの実行結果に関する  
説明として正しいものを2つ選びなさい．
<p>select empno, ename, sal from emp where empno = &EMPNO;<br>
update emp set sal = sal*1.2 where empno = &empno;</p>
	1. スクリプトファイル実行時に、&EMPNOの値を入力するように毎回表示される
	1. スクリプトファイルを最初に実行した時だけ、&EMPNOの値を  
	入力するよう表示される
	1. DEFINEコマンドでEMPNOの値を事前に定義すれば、スクリプトファイル実行時に&EMPNO  
	に対する入力要求は表示されない
	1. select文の&EMPNOの入力要求によって入力した値は、UPDATE文の&empnoに引き継がれる  
<br>
=> 1, 3  
<br>

## 10/28

1. リレーショナルデータベースのデータの格納形式を選びなさい．
	1. ２次元の表形式
	1. 階層型データ構造
	1. ツリー形式
	1. ネットワーク構造  
	<br>
=> 1  
<br>
1. リレーショナルデータベースに関する説明として誤っているものを  
選びなさい．
	1. 主キーの値にNULL値は使えない
	1. 外部キーの値にNULL値は使えない
	1. 表は行と列から構成される
	1. 行と列の交差部分をフィールドと呼ぶ  
	<br>
	=> 2  
	<br>
1. トランザクション制御文でないものを次の中から選びなさい．
	1. SAVEPOINT
	1. ROLLBACK
	1. REVOKE
	1. COMMIT  
	<br>
	=> 3  
	<br>
1. リレーショナルデータベースに関する説明として誤っているものを  
３つ選びなさい
	1. 表では、１件のまとまった情報は１行に格納される
	1. 外部キーは、他の表の主キーまたは一意キーへの物理的ポインタ  
	である
	1. 主キーにより、行の重複は許されない
	1. 各列には必ず値を入れなければないなら
	1. データの格納順番がデータが戻される順番となる  
	<br>
	=> 2, 4, 5  
	<br>
1. SQL Developerに関する説明として誤っている物を選びなさい．
	1. 開発の生産性を向上させるグラフィカルツールである
	1. インストーラは必要ない
	1. javaで開発されている
	1. リリース11.1.0以降のOracle Databaseに接続できる  
	<br>
	=> 4  
	<br>
1. 以下のSELECT文が使う機能を選びなさい  
<p>select empno, ename from emp where deptno=30;</p>
	1. 射影、結合
	1. 選択、結合
	1. 射影、選択
	1. 射影、選択、結合  
	<br>
	=> 3  
	<br>
1. 表から全ての列を検索する方法を次の中から２つ選びなさい．
	1. SELECT句でアスタリスク(*)を指定する
	1. SELECT句でALLを指定する
	1. SELECT句でDISTINCTを指定する
	1. SELECT句で全ての列名をリストする  
	<br>
	=> 1, 4  
	<br>
1. 連結演算子で文字列NULLを連結すると結果はどうなるか．正しいもの  
を選びなさい．
	1. 文字列
	1. スペース
	1. エラー
	1. NULL  
	<br>
	=> 1  
	<br>
1. 文字リテラルTeacher's Petの指定方法として正しいものを2つ選びなさい．  
	1. 'Teacher''s Pet'
	1. q'Teacher's Pet'
	1. q'%Teacher's Pet%'
	1. q'(Teacher''s Pet)'  
	<br>
	=> 1, 3  
	<br>
1. 次の中から、エラーとなるDISTINCTおよびUNIQUEキーワードの使い方  
を選びなさい  
	1. select distinct job from emp;
	1. select distinct job distinct deptno from emp;
	1. select distinct job, deptno from emp;
	1. select unique * from emp;  
	<br>
	=> 2  
	<br>


## 10/27

1. 以下の操作を行うSQL文を書いて下さい．  
	1. dept1表の作成
		1. deptno, number(4), 主キー制約, 制約名：dept1_deptno_pk
		1. dname varchar2(10), not null制約
		1. loc, varchar2(10)
	1. dept1表の削除
1. 以下の操作を行うSQL文を書いて下さい．  
	1. emp1表の作成  
		1. empno, number(4), 主キー制約, 制約名：emp1_empno_pk  
		1. ename, varchar2(10), not null制約, 制約名：emp1_ename_nn  
		1. deptno, number(4), departments(deptno)への外部キー（参照整合性）制約, 制約名：emp1_dept1_deptno_fk  
	1. emp1表の削除  
1. 以下の操作を行うSQL文を書いて下さい．  
	1. v_emp_deptビューの作成。employees表とdepartments表を結合し、deptnoが「10」のempno, ename, dnameを表示する
	1. 上記ビューを使用し、select文を実行
	1. 上記ビューを削除。
1. 以下の操作を行うSQL文を書いて下さい．  
	1. s_ord順序の作成
	1. s_ord順序の増分値を10に変更
	1. s_ord順序を削除
1. 以下の操作を行うSQL文を書いて下さい．  
	1. departments表に対して、dept_sシノニムを作成
	1. select文を実行し、dept_sシノニムが正しく動作していることを確認
	1. dept_sシノニムを削除


## 10/22

1. departments表にdeptno「50」、dname「教育」、loc「大手町」で、１行追加する  
SQL文を書いて下さい．  
1. 上記で追加した行を削除するSQL文を書いて下さい．  
1. departments表にdeptno「60」、dname「経理」、locはnullで、１行追加する  
SQL文を書いて下さい．  
1. 上記で追加した行を削除するSQL文を書いて下さい．  
1. employees表にempno, ename, hiredateを置換変数で入力し、その他はnullで  
１行追加するSQL文を書いて下さい．  
1. departments表と同一の表構造のdept2に対して、departments表からselect文を  
使用してデータを取得し、deptno「deptno+1」、dname「dname」、loc「loc」のデータを追加  
するSQL文を書いて下さい．  
1. employees表のdeptnoがnullのデータについて、deptnoを「10」に更新する  
SQL文を書いて下さい．  
1. employees表のempnoが「1012」のデータについて、ename「林」、depto「20」に更新する  
SQL文を書いて下さい．  
1. employees表のempnoが「1013」および「1014」のデータについて、deptno「null」に更新する  
SQL文を書いて下さい．  
1. ロールバックを実行するSQL文を書いて下さい．  


## 10/21

1. employees表からempnoが「1003」のsal（employees表から副問い合わせ)以上  
のempno, ename, salを表示するSQL文を書いて下さい．  
1. employees表からdnameが「営業」（departments表から副問い合わせ）の  
empno, ename, deptnoを表示するSQL文を書いて下さい．  
1. employees表からsalがempnoの「1003」以上（employees表から副問い合わせ）、  
かつdnameが「営業」（departments表から副問い合わせ)のempno, ename, sal,  
deptnoを表示するSQL文を書いて下さい．  
1. employees表とdepartments表を結合(deptno)し、deptno,  
dname毎のsalの平均が全体の平均（employees表から副問い合わせ）以上である  
deptno, dname, avg(sal)を表示するSQL文を書いて下さい．  
1. employees表を自己結合(empno, mgr)し、empnoが「山田」または「伊藤」の上司(mgr)  
(employees表から副問い合わせ)のempno, enameおよび上司のenameを表示する
1. employees表からdeptnoが「10」または「20」のdeptno, empno,enameを表示する  
select文とdeptnoが「20」または「30」のdeptno, empno,enameを表示するselect文  
の問い合わせ結果を連結し、重複した行を排除して表示するSQL文を書いて下さい．  
1. employees表からdeptnoが「10」または「20」のdeptno, empno,enameを表示する  
select文とdeptnoが「20」または「30」のdeptno, empno,enameを表示するselect文  
の問い合わせ結果を連結し、重複した行も含めて表示するSQL文を書いて下さい．  
1. employees表からdeptnoが「10」または「20」のdeptno, empno,enameを表示する  
select文とdeptnoが「20」または「30」のdeptno, empno,enameを表示するselect文  
の問い合わせ結果を連結し、共通した行だけ表示するSQL文を書いて下さい．  
1. employees表からdeptnoが「10」または「20」のdeptno, empno,enameを表示する  
select文とdeptnoが「20」または「30」のdeptno, empno, enameを表示するselect文  
の問い合わせ結果を連結し、１つめのselect文の結果のうち、２つ目の問い合わせ結果にない行を  
表示するSQL文を書いて下さい．  
1. employees表からdeptnoが「10」または「20」のdeptno, empno,enameを表示する  
select文とdeptnoが「20」または「30」のdeptno, empno, enameを表示する  
select文の問い合わせ結果を連結し、重複した行を排除して表示するSQL文を書いて下さい．  
この時、empnoの昇順で並べて表示すること  

## 10/15

1. employees表からdeptno毎のsalの平均の最大値を表示するSQL文を書いて下さい  
1. employees表からdeptnoとjobの組み合わせ毎のdeptno、job、  
人数、salの平均を表示するSQL文を書いて下さい．但し、人数が２人以上  
の組み合わせのみ表示し、deptnoの昇順で、ソートしてください．  
1. employees表とdepartments表を結合(deptno)し、  
empno, ename, dnameを表示するSQL文を書いて下さい  
1. employees表とdepartments表を結合(deptno)し、  
deptnoが10または20のempno, ename, dnameを表示するSQL文を書いて下さい  
1. orders表、customers表およびemployees表の３つの表を  
結合(orders.custno, customers.custno, orders.salesman_no,  
employees.empno)し、ordno, date_ordered, cname, enameを表示する  
SQL文を書いて下さい  
1. employees表とsalgrades表を非等価結合(employees.sal,  
salgrades.losal, salgrades.hisal)し、empno, ename, sal,  
gradeを表示するSQL文を書いて下さい  
1. employees表を自己結合(empno, mgr)して、empno, enameおよび  
上司のempno, enameを表示するSQL文を書いて下さい  
1. 上記の自己結合で、外部結合を用い、「社長」のデータも取り出せる様に修正した  
SQL文を書いて下さい  
1. USING句を使用し、employees表とdepartments表を結合(deptno)し、  
empno, ename, deptno, dnameを表示するSQL文を書いて下さい  
1. employees表とdepartmentsを結合(deptno)し、empno, ename,  
deptno, dnameを表示するSQL文を書いて下さい。この時、eemployees表でだれも  
割り当られていないdepartments表の部門も表示されるようにしてくください  

## 10/14

1. employees表からenameとCASE式を使って、deptnoが10の時は  
salを1.1倍、20の時は1.2倍、それ以外はsalを表示する．  
この時、計算結果の別名として、NEW_SALを表示するSQL文を書いて下さい  
1. employees表からenameとDECODE関数を使って、deptnoが10の時は  
salを1.1倍、20の時は1.2倍、それ以外はsalを表示する．  
この時、計算結果の別名として、NEW_SALを表示するSQL文を書いて下さい  
1. employees表からsalの平均と合計を表示するSQL文を書いて下さい  
1. employees表からdeptno毎のdeptno、人数、salの平均を表示する．  
この時、deptnoの昇順で、ソートするSQL文を書いて下さい  
1. employees表からdeptno、job毎のdeptno、job、人数、salの平均  
を表示する．この時、deptnoの昇順で、ソートするSQL文を書いて下さい  

## 10/13

1. 文字列「2011年01月01日」を日付値に変換し表示するSQL文を書いて下さい  
1. 字列「￥5,000,000」を数値の「5000000」に変換し、12で割りさらにその値を  
小数点以下で四捨五入し、表示するSQL文を書いて下さい  
1. employees表からename, sal, comm,sal+comm（commがnullの場合はNVL関数を使用して0と見なす）  
を表示するSQL文を書いて下さい  
1. employees表からename, sal, comm, sal+comm（commがnullの場合はNVL2関数を使用して0と見なす）  
を表示するSQL文を書いて下さい  
1. employees表からename, sal, comm, sal+comm（commがnullの場合はCOALESCE関数を使用して0と見なす）  
を表示するSQL文を書いて下さい  

## 10/8

1. employees表でsalが「30万以上」かつdeptnoが「30」であるempno、ename、  
sal、deptno列を表示するSQL文を書いて下さい  
1. employees表からempno、ename、sal、deptno列を表示するSQL文を書いて下さい．  
この時、salの多い順にソートする．但し、salが同額の場合にはdeptnoの小さい順でソートする  
1. employees表でdeptnoが置換変数で受け取った値と等しいempno、ename、sal、  
deptno列を表示するSQL文を書いて下さい  
1. products表でpnameに「100%」を含むprodno、pname、price列を表示するSQL文を  
書いて下さい  
1. employees表でcommが「NULL」でないempno、ename、sal、comm列を表示するSQL文を  
書いて下さい  
1. employees表でyomiが「TAKAHASHI」であるempno, ename, yomi列を表示するSQL文を  
書いて下さい．但し、小文字でyomi列は小文字で格納されているため比較時に取得データを大文字に  
変換すること  
1. employees表からyomi列を取り出し、これを先頭のみ大文字に変換する．さらに、  
「@std.it-college.ac.jp」と結合し、表示するSQL文を書いて下さい  
1. 文字列「Oracle Server」の２文字目から３文字分および同じ文字列の２文字目  
以降を表示するSQL文を書いて下さい  
1. 文字列「Oracle Server」の「Server」を「Master」に変換し表示するSQL文を書いて下さい  
1. employees表からempno, ename, yomi列及びyomiの長さを表示するSQL文を書いて下さい  

## 10/7

1. employees表のjob列を重複を排除して表示するSQL文を書いて下さい  
1. employees表でenameが「佐藤」のempno、ename、deptno列を表示する  
SQL文を書いて下さい  
1. employees表でhiredateが「2006年10月21日」のempno、ename、hiredate列を  
表示するSQL文を書いて下さい．但し、日付形式は「RR-MM-DD」．  
1. employees表でsalが「30万以上」のempno、ename、sal列を表示する  
SQL文を書いて下さい．  
1. employees表でsalが「20万以上かつ30万以下」のempno、ename、sal列を  
表示するSQL文を書いて下さい．  
1. employees表でdeptnoが「10または20」であるempno、ename、deptno列を  
表示するSQL文を書いて下さい．  
1. employees表でdeptnoが「10でも20でもない」empno、ename、deptno列を  
表示するSQL文を書いて下さい．  
1. employees表でsalが「20万より少ないまたは30万より多い」場合のempno、ename、sal列を  
表示するSQL文を書いて下さい．  
1. products表でpnameに「A4」を含む場合のprodno、pname、price列を  
表示するSQL文を書いて下さい．  
1. employees表でcommが「NULL」のempno、ename、sal、comm列を  
表示するSQL文を書いて下さい．  

## 10/6

1. employees表のempno列、ename列を取り出すSQL文を書いて下さい  
1. employees表のすべての列を取り出すSQL文を書いて下さい  
1. employees表の表構造を表示するSQL文を書いて下さい  
1. employees表のename列、sal列、sal列に100000を足したものを12倍した列  
を表示するSQL文を書いて下さい  
1. employees表のempno、ename、sal、sal列に100000を足したものを12倍した列  
を取り出す、この時、それぞれに社員番号、社員名、給与、年収の別名  
を表示するSQL文を書いて下さい  