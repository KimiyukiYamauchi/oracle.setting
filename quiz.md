# オラクル小テスト

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