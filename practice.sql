use gentech;
CREATE TABLE DEPT
       (DEPTNO INT PRIMARY KEY,
	DNAME VARCHAR(100) ,
	LOC VARCHAR(100) ) ;
CREATE TABLE EMP
       (EMPNO INT PRIMARY KEY,
	ENAME VARCHAR(50),
	JOB VARCHAR(50),
	MGR INT,
	HIREDATE DATE,
	SAL INT,
	COMM INT,
	DEPTNO INT,
        FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO));
INSERT INTO DEPT VALUES
	(10,'ACCOUNTING','NEW YORK'),
	(20,'RESEARCH','DALLAS'),
	(30,'SALES','CHICAGO'),
	(40,'OPERATIONS','BOSTON');

INSERT INTO EMP VALUES
(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20),
(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),
(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30),
(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),
(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),
(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30),
(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10),
(7788,'SCOTT','ANALYST',7566,'1987-07-13',3000,NULL,20),
(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10),
(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,NULL,30),
(7876,'ADAMS','CLERK',7788,'1987-07-13',1100,NULL,20),
(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30),
(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20),
(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);
select ename, sal*12 as salary from emp;
select *from emp;
select * from emp where sal<1000;
select * from emp where sal>=1000 and sal<=1500;
select * from emp where not job = 'salesman';
select distinct job,deptno from emp;
select * from emp where job like '%man'; /*using like operator filter the records based on partial matching*/
select * from emp where ename like '____';
use gentech;
select*from emp;
select*from dept;
select * from emp where comm is null;  /*is null*/
 select * from emp where comm is not null;  /*is not null*/
select e.ename,e.empno,e.job from emp e; /*alias*/
select *from emp where 1=1;
select d.dname from dept d where deptno in (select e.deptno from emp e where comm is not null);

select d.dname from dept d where deptno in (select e.deptno from emp e where comm is  null);
select dname from dept  where deptno in(select deptno from emp where sal=(select max(sal) from emp));
select * from emp limit 1;  /*limit*/ 
select * from emp limit 2 offset 2;   /*offset 2(0,1,2) means it start from 3rd record, if give 0 it starts from 1 st record*/
select * from emp limit 2,5;   /*n-1 14-2=12 it shows 2nd record onwards upto 5 records */
select d.dname from dept d where d.deptno =(select distinct e.deptno from emp e where d.deptno=e.deptno );
select e.sal from emp e where 2=(select count(distinct(m.sal)) from emp m where e.sal<=m.sal);
select distinct e.sal from emp e where 2=(select count(distinct( m.sal)) from emp m where e.sal<=m.sal);
select distinct sal from emp order by sal desc limit 0,1;
select e.ename,d.dname from emp e left join dept d on e.deptno=d.deptno;
select e.ename,d.dname from emp e right join dept d on e.deptno=d.deptno;
select e.ename,d.dname from emp e left join dept d on e.deptno=d.deptno
					UNION
select e.ename,d.dname from emp e right join dept d on e.deptno=d.deptno;
select deptno,dname, 
case 
when deptno<=30 then 'emp available'
else 'not'
end 'result'
from dept;
select*from gentech.emp;
select*from dept;
select e.empno,e.ename,e.job, d.deptno from emp e cross join dept d;
select distinct sal from emp order by sal desc limit 2,1;
select d.dname from dept d where exists(select *from emp e where d.deptno=e.deptno);
select d.dname from dept d where not exists(select *from emp e where d.deptno=e.deptno);
select job , count(ename),max(sal) from emp group by job;
select job , count(ename) from emp group by job,deptno;
select  job ,count(ename) from emp group by job,deptno having(count(ename)>=1);
select max(sal) from emp where sal<(select max(sal)  from emp);
select * from emp where sal>all(select sal from emp where sal in(1000,3000));
select distinct d. dname,e.ename from  dept d left join emp e on d.deptno=e.deptno; 
select max(sal) from emp where sal<(select max(sal) from emp where sal<(select max(sal) from emp ));
select ename, sal*12 as sal  from emp ;
select d.dname from dept d where d.deptno in (select e.deptno from dept e where d.deptno=e.deptno);
select * from emp limit 1;
select dname from dept where deptno in(select deptno from emp);
select  dname from dept where deptno in(select distinct deptno from emp where comm is  null);
select dname from dept  where deptno in(select deptno from emp  where sal=(select max(sal) from emp ) );


CREATE TABLE EMP
       (EMPNO INT PRIMARY KEY,
	ENAME VARCHAR(50),
	JOB VARCHAR(50),
	MGR INT,
	HIREDATE DATE,
	SAL INT,
	COMM INT,
	DEPTNO INT,
        FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO));



CREATE TABLE EMP
       (EMPNO INT ,
	ENAME VARCHAR(50),
	JOB VARCHAR(50),
	MGR INT,
	HIREDATE DATE,
	SAL INT,
	COMM INT,
	DEPTNO INT,
    PRIMARY KEY(EMPNO),
        FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO));
        
  select * from emp;
  alter table emp drop primary key;
  alter table emp modify  ENAME varchar(50) primary key;
  desc emp;
  select table_name from user tables;
  select max(sal) from emp -- first element
  where sal<(select max(sal) from emp 
  where sal<(select max(sal) from emp));  -- 3rd highest salary
  select distinct a.sal from emp a where 3=(select distinct(count(b.sal)) from emp b where a.sal<=b.sal); -- without limit
  select sal from emp  order by sal desc limit 1,1;  -- using limit
  select *,count(empno) from emp group by sal having(count(empno)>1);
  select * from emp where mod(empno,2)=0;  -- even records
  select * from emp where mod(empno,2)=1;  -- odd records
  select min(empno) from  emp;
  create table emp1 as select * from emp;
  create table emp2 as select empno , ename from emp;
  create table emp3 as select * from emp where 1=2;
  select * from emp3;
    select * from emp2;
      select * from emp1;
    select job  from emp where length(job)<6 ;