/* Create Table for ���K */

DROP TABLE IF EXISTS ord_details;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salgrades;
DROP TABLE IF EXISTS products;

CREATE TABLE departments
       (deptno INT(2) PRIMARY KEY,
	dname VARCHAR(14) ,
	loc VARCHAR(10)) ENGINE=InnoDB;

CREATE TABLE employees
       (empno INT(4) PRIMARY KEY,
	ename VARCHAR(10),
	yomi VARCHAR(20),
	job VARCHAR(8),
	mgr INT(4),
	hiredate DATE,
	sal INT(7),
	comm INT(7),
	deptno INT(2),
	index(deptno),
	foreign key(deptno) references departments(deptno)) ENGINE=InnoDB;

INSERT INTO departments VALUES
	(10,'�Ǘ�','��蒬');
INSERT INTO departments VALUES 
	(20,'�����J��','���l');
INSERT INTO departments VALUES
	(30,'�c��','�i��');
INSERT INTO departments VALUES
	(40,'����','����');

INSERT INTO employees VALUES
	(1001,'����','sato','�В�',NULL,'2001-02-25',500000,NULL,10);
INSERT INTO employees VALUES
	(1002,'���','suzuki','����',1013,'2000-03-26',200000,NULL,20);
INSERT INTO employees VALUES
	(1003,'����','takahashi','�c��',1007,'2000-05-30 ',300000,30000,30);
INSERT INTO employees VALUES
	(1004,'�c��','tanaka','�c��',1007,'2002-06-02',355000,50000,30);
INSERT INTO employees VALUES
	(1005,'�n��','watanabe','����',1001,'2002-07-11',280000,NULL,20);
INSERT INTO employees VALUES
	(1006,'�ɓ�','ito','�c��',1007,'2008-01-06',300000,140000,30);
INSERT INTO employees VALUES
	(1007,'�R�{','yamamoto','����',1001,'2000-08-09',285000,NULL,30);
INSERT INTO employees VALUES
	(1008,'����','nakamura','����',1001,'2000-09-17',245000,NULL,10);
INSERT INTO employees VALUES
	(1009,'����','kobayashi','��C',1005,'2006-10-21',300000,NULL,20);
INSERT INTO employees VALUES
	(1010,'�ē�','saito','�c��',1007,'2001-12-17',150000,0,30);
INSERT INTO employees VALUES
	(1011,'����','kato','����',1009,'2006-10-21',110000,NULL,20);
INSERT INTO employees VALUES
	(1012,'�g�c','yoshida','����',1007,'2009-03-13',295000,NULL,30);
INSERT INTO employees VALUES
	(1013,'�R�c','yamada','��C',1005,'2001-03-13',280000,NULL,20);
INSERT INTO employees VALUES
	(1014,'���X��','sasaki','����',1008,'2004-05-02',230000,NULL,10);

ALTER TABLE employees
ADD FOREIGN KEY(mgr)
REFERENCES employees(empno);

CREATE TABLE salgrades
      ( grade CHAR(1) PRIMARY KEY,
	losal INT(7),
	hisal INT(7));

INSERT INTO salgrades VALUES ('A',100000,190000);
INSERT INTO salgrades VALUES ('B',190001,280000);
INSERT INTO salgrades VALUES ('C',280001,370000);
INSERT INTO salgrades VALUES ('D',370001,460000);
INSERT INTO salgrades VALUES ('E',460001,999999);

CREATE TABLE customers
	(custno INT(5) PRIMARY KEY,
 	 cname VARCHAR(20),
	 address VARCHAR(30),
	 phone VARCHAR(12),
	 credit_rating VARCHAR(6)) ENGINE=InnoDB;

INSERT INTO customers VALUES (1000,'�i�쏤��','�����s�`��P-��-��','03-1234-xxxx','�D��');
INSERT INTO customers VALUES (1001,'���l���X','���l�s��q��Q-��-��','045-753-xxxx','�v����');
INSERT INTO customers VALUES (1002,'�����','����s�{���P-��-����','048-336-xxxx','�v����');
INSERT INTO customers VALUES (1003,'���~���X','���l�s�ߌ���Q-����','045-505-xxxx','��');
INSERT INTO customers VALUES (1004,'���X�g�A','���s����P�O-����','044-567-xxxx','�D��');
INSERT INTO customers VALUES (1005,'�c�a�}�[�g','�����s����X-����','03-3334-xxxx','�D��');
INSERT INTO customers VALUES (1006,'��蒬����','�����s���c��P-��-��','03-2236-xxxx','��');
INSERT INTO customers VALUES (1007,'�o���G�e�B�O�b�Y','�������܎s�����悘����','048-556-xxxx','��');
INSERT INTO customers VALUES (1008,'���[���h�X�g�A','���l�s�_�ސ�悘��-��','045-654-xxxx','�v����');
INSERT INTO customers VALUES (1009,'�c�a�X�g�A','�����s�a�J�悘��-����','03-5789-xxxx','�v����');


CREATE TABLE products
	(PRODNO CHAR(3) PRIMARY KEY,
	 PNAME VARCHAR(30),
	 PRICE INT(6)) ENGINE=InnoDB;

INSERT INTO products VALUES ('A01','100�~�{�[���y��',100);
INSERT INTO products VALUES ('A02','�c���V���[�v�y���V��',100);
INSERT INTO products VALUES ('A03','10�F�{�[���y��',300);
INSERT INTO products VALUES ('A04','�ō������N�M',1000);
INSERT INTO products VALUES ('A05','�ȂȂ��뉔�M',30);
INSERT INTO products VALUES ('A06','���N�{�[���y��',500);

INSERT INTO products VALUES ('B01','���nA4�m�[�g',160);
INSERT INTO products VALUES ('B02','�����w��A4�m�[�g',160);
INSERT INTO products VALUES ('B03','���ʃ��C�_�[������',150);
INSERT INTO products VALUES ('B04','�ËL�X���[�Y�m�[�g',200);
INSERT INTO products VALUES ('B05','���nB5�m�[�g',160);
INSERT INTO products VALUES ('B06','�|�P����B5�m�[�g',160);

INSERT INTO products VALUES ('C01','�L���C���A4�p��',500);
INSERT INTO products VALUES ('C02','�L���C���B5�p��',500);
INSERT INTO products VALUES ('C03','�L���C���A3�p��',600);
INSERT INTO products VALUES ('C04','�\�R�\�R�L���CA4�p��',350);
INSERT INTO products VALUES ('C05','�\�R�\�R�L���CB5�p��',350);
INSERT INTO products VALUES ('C06','�ڂɗD����A4�p��',400);

INSERT INTO products VALUES ('D01','�˂�˂�����S��',50);
INSERT INTO products VALUES ('D02','�Ȃ�ł����������S��',100);
INSERT INTO products VALUES ('D03','�L�G�i�[�C�����S��',200);
INSERT INTO products VALUES ('D04','100%�}�b�V���C���t',350);

INSERT INTO products VALUES ('D15','�J���[�̍�������S��',80);
INSERT INTO products VALUES ('D16','�������̍�������S��',80);


CREATE TABLE orders
	(ordno INT(8) PRIMARY KEY,
	 custno INT(5),
	 date_ordered DATE,
	 date_shipped DATE,
	 salesman_no INT(4),
	 payment_type VARCHAR(10),
	index(custno, salesman_no),
	foreign key(custno) references customers(custno),
	foreign key(salesman_no) references employees(empno)
	) ENGINE=InnoDB;

INSERT INTO orders VALUES (1,1001,'2009-12-20','2003-12-27',1003,'�N���W�b�g');
INSERT INTO orders VALUES (2,1001,'2009-12-21','2003-12-27',1003,'�N���W�b�g');
INSERT INTO orders VALUES (3,1001,'2010-01-10','2004-01-17',1003,'�N���W�b�g');
INSERT INTO orders VALUES (4,1002,'2010-01-11','2004-01-18',1010,'�N���W�b�g');
INSERT INTO orders VALUES (5,1008,'2010-01-15','2004-01-22',1003,'�N���W�b�g');
INSERT INTO orders VALUES (6,1005,'2010-01-20','2004-01-27',1003,'�N���W�b�g');
INSERT INTO orders VALUES (7,1007,'2010-01-22','2004-01-29',1006,'�N���W�b�g');
INSERT INTO orders VALUES (8,1006,'2010-01-22','2004-01-29',1010,'����');
INSERT INTO orders VALUES (9,1007,'2010-01-25','2004-02-03',1006,'�N���W�b�g');
INSERT INTO orders VALUES (10,1003,'2010-02-15','2004-02-22',1003,'�N���W�b�g');
INSERT INTO orders VALUES (11,1007,'2010-02-20','2004-02-27',1006,'�N���W�b�g');
INSERT INTO orders VALUES (12,1006,'2010-03-16',null,1010,'����');
INSERT INTO orders VALUES (13,1009,'2010-04-02',null,1006,'����');

CREATE TABLE ord_details
(ordno INT(8),
prodno VARCHAR(3),
quantity INT(5),
PRIMARY KEY(ordno,prodno),
index(ordno, prodno),
foreign key(ordno) references orders(ordno),
foreign key(prodno) references products(prodno));

INSERT INTO ord_details VALUES (1,'A02',30);
INSERT INTO ord_details VALUES (1,'C01',20);
INSERT INTO ord_details VALUES (2,'B01',5);
INSERT INTO ord_details VALUES (2,'B06',10);
INSERT INTO ord_details VALUES (2,'B02',10);
INSERT INTO ord_details VALUES (2,'A01',5);
INSERT INTO ord_details VALUES (3,'C01',10);
INSERT INTO ord_details VALUES (3,'C02',10);
INSERT INTO ord_details VALUES (3,'A04',10);
INSERT INTO ord_details VALUES (3,'B01',20);
INSERT INTO ord_details VALUES (4,'A01',10);
INSERT INTO ord_details VALUES (4,'B01',5);
INSERT INTO ord_details VALUES (4,'A02',10);
INSERT INTO ord_details VALUES (5,'B06',15);
INSERT INTO ord_details VALUES (5,'B01',15);
INSERT INTO ord_details VALUES (6,'A01',30);
INSERT INTO ord_details VALUES (6,'B06',20);
INSERT INTO ord_details VALUES (6,'A04',20);
INSERT INTO ord_details VALUES (6,'A02',50);
INSERT INTO ord_details VALUES (6,'B01',20);
INSERT INTO ord_details VALUES (7,'A01',10);
INSERT INTO ord_details VALUES (7,'A02',5);
INSERT INTO ord_details VALUES (7,'B01',8);
INSERT INTO ord_details VALUES (8,'B06',5);
INSERT INTO ord_details VALUES (8,'B02',5);
INSERT INTO ord_details VALUES (9,'A01',10);
INSERT INTO ord_details VALUES (9,'D01',30);
INSERT INTO ord_details VALUES (9,'D15',30);
INSERT INTO ord_details VALUES (10,'B06',30);
INSERT INTO ord_details VALUES (10,'C02',50);
INSERT INTO ord_details VALUES (10,'A01',10);
INSERT INTO ord_details VALUES (11,'A02',50);
INSERT INTO ord_details VALUES (11,'B01',20);
INSERT INTO ord_details VALUES (11,'D01',10);
INSERT INTO ord_details VALUES (11,'B02',5);
INSERT INTO ord_details VALUES (12,'C02',10);
INSERT INTO ord_details VALUES (12,'A05',10);
INSERT INTO ord_details VALUES (12,'D16',20);
INSERT INTO ord_details VALUES (12,'D04',10);
INSERT INTO ord_details VALUES (12,'B02',15);
INSERT INTO ord_details VALUES (13,'A01',20);
INSERT INTO ord_details VALUES (13,'A02',25);
