SPOOL setup.log
PROMPT
PROMPT "Clean Up ..."
PROMPT "初回実行時はエラーが発生しますが問題ありません。"

/* Create Table for 実習 */

drop TABLE ord_details2;
drop TABLE orders2;
drop TABLE employees2;
drop TABLE departments2;
drop TABLE customers2;
drop TABLE products2;
drop TABLE salgrades2;

CREATE TABLE departments2
       (deptno NUMBER(2) CONSTRAINT pk_dept2 PRIMARY KEY,
	dname VARCHAR2(14) ,
	loc VARCHAR2(10) ) ;

CREATE TABLE employees2
       (empno NUMBER(4) CONSTRAINT pk_emp2 PRIMARY KEY,
	ename VARCHAR2(10),
	yomi VARCHAR2(20),
	job VARCHAR2(8),
	mgr NUMBER(4),
	hiredate DATE,
	sal NUMBER(7),
	comm NUMBER(7),
	deptno NUMBER(2) CONSTRAINT fk_deptno2 REFERENCES departments2(deptno));

INSERT INTO departments2 VALUES
	(10,'管理','大手町');
INSERT INTO departments2 VALUES 
	(20,'研究開発','横浜');
INSERT INTO departments2 VALUES
	(30,'営業','品川');
INSERT INTO departments2 VALUES
	(40,'財務','東京');

INSERT INTO employees2 VALUES
	(1001,'佐藤','sato','社長',NULL,to_date('2001-02-25','yyyy-mm-dd'),500000,NULL,10);
INSERT INTO employees2 VALUES
	(1002,'鈴木','suzuki','事務',1013,to_date('2000-03-26','yyyy-mm-dd'),200000,NULL,20);
INSERT INTO employees2 VALUES
	(1003,'高橋','takahashi','営業',1007,to_date('2000-05-30 ','yyyy-mm-dd'),300000,30000,30);
INSERT INTO employees2 VALUES
	(1004,'田中','tanaka','営業',1007,to_date('2002-06-02','yyyy-mm-dd'),355000,50000,30);
INSERT INTO employees2 VALUES
	(1005,'渡辺','watanabe','部長',1001,to_date('2002-07-11','yyyy-mm-dd'),280000,NULL,20);
INSERT INTO employees2 VALUES
	(1006,'伊藤','ito','営業',1007,to_date('2008-01-06','yyyy-mm-dd'),300000,140000,30);
INSERT INTO employees2 VALUES
	(1007,'山本','yamamoto','部長',1001,to_date('2000-08-09','yyyy-mm-dd'),285000,NULL,30);
INSERT INTO employees2 VALUES
	(1008,'中村','nakamura','部長',1001,to_date('2000-09-17','yyyy-mm-dd'),245000,NULL,10);
INSERT INTO employees2 VALUES
	(1009,'小林','kobayashi','主任',1005,to_date('2006-10-21','yyyy-mm-dd'),300000,NULL,20);
INSERT INTO employees2 VALUES
	(1010,'斉藤','saito','営業',1007,to_date('2001-12-17','yyyy-mm-dd'),150000,0,30);
INSERT INTO employees2 VALUES
	(1011,'加藤','kato','事務',1009,to_date('2006-10-21','yyyy-mm-dd'),110000,NULL,20);
INSERT INTO employees2 VALUES
	(1012,'吉田','yoshida','事務',1007,to_date('2009-03-13','yyyy-mm-dd'),295000,NULL,30);
INSERT INTO employees2 VALUES
	(1013,'山田','yamada','主任',1005,to_date('2001-03-13','yyyy-mm-dd'),280000,NULL,20);
INSERT INTO employees2 VALUES
	(1014,'佐々木','sasaki','事務',1008,to_date('2004-05-02','yyyy-mm-dd'),230000,NULL,10);

alter table employees2
add constraint fk_mgr2
foreign key(mgr)
references employees2(empno);


CREATE TABLE salgrades2
      ( grade CHAR(1) CONSTRAINT pk_grade2 PRIMARY KEY,
	losal NUMBER(7),
	hisal  NUMBER(7));

INSERT INTO salgrades2 VALUES ('A',100000,190000);
INSERT INTO salgrades2 VALUES ('B',190001,280000);
INSERT INTO salgrades2 VALUES ('C',280001,370000);
INSERT INTO salgrades2 VALUES ('D',370001,460000);
INSERT INTO salgrades2 VALUES ('E',460001,999999);

CREATE TABLE customers2
	(custno 	NUMBER(5) CONSTRAINT cust_pk2 PRIMARY KEY,
 	 cname 		VARCHAR2(40),
	 address	VARCHAR2(50),
	 phone		VARCHAR2(12),
	 credit_rating	VARCHAR2(12));

INSERT INTO customers2 VALUES (1000,'品川商事','東京都港区１−ｘ−ｘ','03-1234-xxxx','優良');
INSERT INTO customers2 VALUES (1001,'横浜商店','横浜市磯子区２−ｘ−ｘ','045-753-xxxx','要注意');
INSERT INTO customers2 VALUES (1002,'川口や','川口市本町１−ｘ−ｘｘ','048-336-xxxx','要注意');
INSERT INTO customers2 VALUES (1003,'○×商店','横浜市鶴見区２−ｘｘ','045-505-xxxx','良');
INSERT INTO customers2 VALUES (1004,'川崎ストア','川崎市川崎区１０−ｘｘ','044-567-xxxx','優良');
INSERT INTO customers2 VALUES (1005,'ＤＢマート','東京都板橋区９−ｘｘ','03-3334-xxxx','優良');
INSERT INTO customers2 VALUES (1006,'大手町文具','東京都千代田区１−ｘ−ｘ','03-2236-xxxx','良');
INSERT INTO customers2 VALUES (1007,'バラエティグッズ','さいたま市中央区ｘｘｘ','048-556-xxxx','良');
INSERT INTO customers2 VALUES (1008,'ワールドストア','横浜市神奈川区ｘｘ−ｘ','045-654-xxxx','要注意');
INSERT INTO customers2 VALUES (1009,'ＤＢストア','東京都渋谷区ｘｘ−ｘｘ','03-5789-xxxx','要注意');


CREATE TABLE products2
	(PRODNO		CHAR(3) CONSTRAINT PROD_PK2 PRIMARY KEY,
	 PNAME		VARCHAR2(30),
	 PRICE		NUMBER(6));

INSERT INTO products2 VALUES ('A01','100円ボールペン',100);
INSERT INTO products2 VALUES ('A02','芯強シャープペンシル',100);
INSERT INTO products2 VALUES ('A03','10色ボールペン',300);
INSERT INTO products2 VALUES ('A04','最高級万年筆',1000);
INSERT INTO products2 VALUES ('A05','なないろ鉛筆',30);
INSERT INTO products2 VALUES ('A06','健康ボールペン',500);

INSERT INTO products2 VALUES ('B01','無地A4ノート',160);
INSERT INTO products2 VALUES ('B02','メルヘンA4ノート',160);
INSERT INTO products2 VALUES ('B03','仮面ライダーメモ帳',150);
INSERT INTO products2 VALUES ('B04','暗記スムーズノート',200);
INSERT INTO products2 VALUES ('B05','無地B5ノート',160);
INSERT INTO products2 VALUES ('B06','ポケモンB5ノート',160);

INSERT INTO products2 VALUES ('C01','キレイ印刷A4用紙',500);
INSERT INTO products2 VALUES ('C02','キレイ印刷B5用紙',500);
INSERT INTO products2 VALUES ('C03','キレイ印刷A3用紙',600);
INSERT INTO products2 VALUES ('C04','ソコソコキレイA4用紙',350);
INSERT INTO products2 VALUES ('C05','ソコソコキレイB5用紙',350);
INSERT INTO products2 VALUES ('C06','目に優しいA4用紙',400);

INSERT INTO products2 VALUES ('D01','ねりねり消しゴム',50);
INSERT INTO products2 VALUES ('D02','なんでも消去消しゴム',100);
INSERT INTO products2 VALUES ('D03','キエナーイ消しゴム',200);
INSERT INTO products2 VALUES ('D04','100%マッシロ修正液',350);

INSERT INTO products2 VALUES ('D15','カレーの香り消しゴム',80);
INSERT INTO products2 VALUES ('D16','いちごの香り消しゴム',80);


CREATE TABLE orders2
	(ordno	NUMBER(8) CONSTRAINT ORD_PK2 PRIMARY KEY,
	 custno NUMBER(5) CONSTRAINT ORD_CUST_FK2 REFERENCES customers2(CUSTNO),
	 date_ordered	DATE,
	 date_shipped	DATE,
	 salesman_no	NUMBER(4) CONSTRAINT ord_emp_fk2 REFERENCES employees2(empno),
	 payment_type	VARCHAR2(20));

INSERT INTO orders2 VALUES (1,1001,to_date('2009-12-20','yyyy-mm-dd'),to_date('2003-12-27','yyyy-mm-dd'),1003,'クレジット');
INSERT INTO orders2 VALUES (2,1001,to_date('2009-12-21','yyyy-mm-dd'),to_date('2003-12-27','yyyy-mm-dd'),1003,'クレジット');
INSERT INTO orders2 VALUES (3,1001,to_date('2010-01-10','yyyy-mm-dd'),to_date('2004-01-17','yyyy-mm-dd'),1003,'クレジット');
INSERT INTO orders2 VALUES (4,1002,to_date('2010-01-11','yyyy-mm-dd'),to_date('2004-01-18','yyyy-mm-dd'),1010,'クレジット');
INSERT INTO orders2 VALUES (5,1008,to_date('2010-01-15','yyyy-mm-dd'),to_date('2004-01-22','yyyy-mm-dd'),1003,'クレジット');
INSERT INTO orders2 VALUES (6,1005,to_date('2010-01-20','yyyy-mm-dd'),to_date('2004-01-27','yyyy-mm-dd'),1003,'クレジット');
INSERT INTO orders2 VALUES (7,1007,to_date('2010-01-22','yyyy-mm-dd'),to_date('2004-01-29','yyyy-mm-dd'),1006,'クレジット');
INSERT INTO orders2 VALUES (8,1006,to_date('2010-01-22','yyyy-mm-dd'),to_date('2004-01-29','yyyy-mm-dd'),1010,'現金');
INSERT INTO orders2 VALUES (9,1007,to_date('2010-01-25','yyyy-mm-dd'),to_date('2004-02-03','yyyy-mm-dd'),1006,'クレジット');
INSERT INTO orders2 VALUES (10,1003,to_date('2010-02-15','yyyy-mm-dd'),to_date('2004-02-22','yyyy-mm-dd'),1003,'クレジット');
INSERT INTO orders2 VALUES (11,1007,to_date('2010-02-20','yyyy-mm-dd'),to_date('2004-02-27','yyyy-mm-dd'),1006,'クレジット');
INSERT INTO orders2 VALUES (12,1006,to_date('2010-03-16','yyyy-mm-dd'),null,1010,'現金');
INSERT INTO orders2 VALUES (13,1009,to_date('2010-04-02','yyyy-mm-dd'),null,1006,'現金');

CREATE TABLE ord_details2
	(ordno		NUMBER(8)   CONSTRAINT ord_det_ord_fk2 REFERENCES orders2(ordno),
	 prodno		CHAR(3)	CONSTRAINT ord_det_prod_fk2 REFERENCES products2(prodno),
	 quantity	NUMBER(5),
         CONSTRAINT ord_det_pk2 PRIMARY KEY(ordno,prodno));

INSERT INTO ord_details2 VALUES (1,'A02',30);
INSERT INTO ord_details2 VALUES (1,'C01',20);
INSERT INTO ord_details2 VALUES (2,'B01',5);
INSERT INTO ord_details2 VALUES (2,'B06',10);
INSERT INTO ord_details2 VALUES (2,'B02',10);
INSERT INTO ord_details2 VALUES (2,'A01',5);
INSERT INTO ord_details2 VALUES (3,'C01',10);
INSERT INTO ord_details2 VALUES (3,'C02',10);
INSERT INTO ord_details2 VALUES (3,'A04',10);
INSERT INTO ord_details2 VALUES (3,'B01',20);
INSERT INTO ord_details2 VALUES (4,'A01',10);
INSERT INTO ord_details2 VALUES (4,'B01',5);
INSERT INTO ord_details2 VALUES (4,'A02',10);
INSERT INTO ord_details2 VALUES (5,'B06',15);
INSERT INTO ord_details2 VALUES (5,'B01',15);
INSERT INTO ord_details2 VALUES (6,'A01',30);
INSERT INTO ord_details2 VALUES (6,'B06',20);
INSERT INTO ord_details2 VALUES (6,'A04',20);
INSERT INTO ord_details2 VALUES (6,'A02',50);
INSERT INTO ord_details2 VALUES (6,'B01',20);
INSERT INTO ord_details2 VALUES (7,'A01',10);
INSERT INTO ord_details2 VALUES (7,'A02',5);
INSERT INTO ord_details2 VALUES (7,'B01',8);
INSERT INTO ord_details2 VALUES (8,'B06',5);
INSERT INTO ord_details2 VALUES (8,'B02',5);
INSERT INTO ord_details2 VALUES (9,'A01',10);
INSERT INTO ord_details2 VALUES (9,'D01',30);
INSERT INTO ord_details2 VALUES (9,'D15',30);
INSERT INTO ord_details2 VALUES (10,'B06',30);
INSERT INTO ord_details2 VALUES (10,'C02',50);
INSERT INTO ord_details2 VALUES (10,'A01',10);
INSERT INTO ord_details2 VALUES (11,'A02',50);
INSERT INTO ord_details2 VALUES (11,'B01',20);
INSERT INTO ord_details2 VALUES (11,'D01',10);
INSERT INTO ord_details2 VALUES (11,'B02',5);
INSERT INTO ord_details2 VALUES (12,'C02',10);
INSERT INTO ord_details2 VALUES (12,'A05',10);
INSERT INTO ord_details2 VALUES (12,'D16',20);
INSERT INTO ord_details2 VALUES (12,'D04',10);
INSERT INTO ord_details2 VALUES (12,'B02',15);
INSERT INTO ord_details2 VALUES (13,'A01',20);
INSERT INTO ord_details2 VALUES (13,'A02',25);

SPOOL off
