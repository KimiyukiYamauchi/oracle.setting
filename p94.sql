set verify off
select empno, ename, sal, deptno
from employees
where deptno = &deptno
/
