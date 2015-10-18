# オラクル小テスト

## 10/20

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
1. employees表を自己結合(empno, mgr)し、enameが「山田」または「伊藤」の上司(mgr)  
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