select empno, ename, sal, deptno
from employees
where deptno = &&deptno
/
select ename, sal, hiredate
from employees
where deptno = &deptno
/