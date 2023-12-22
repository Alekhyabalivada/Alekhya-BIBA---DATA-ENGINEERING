create database Emp_details;
use Emp_details;
create table emp (eid int not null,ename varchar(50),esalary int,ecity varchar(50));
select name from sys.tables
insert into emp(eid,ename,esalary,ecity)
	values('1','john','50000','hyd');
insert into emp(eid,ename,esalary,ecity)
	values('2','vicky','75000','pune');
insert into emp(eid,ename,esalary,ecity)
	values('3','ram','66000','vizag');
insert into emp(eid,ename,esalary,ecity)
	values('4','nancy','88000','chennai');
insert into emp(eid,ename,esalary,ecity)
	values('5','steve','30000','delhi');

select * from emp;
select eid,ename from emp;
select ename from emp where esalary = 30000;

update emp set ecity = 'mumbai' where eid = '3';
update emp set ename = 'will' where ename = 'john';
update emp set ename = 'mike' where ecity = 'pune';
update emp set ename = 'dustin' where esalary = '66000';

alter table emp add dob date;

select current_timestamp;
update emp set dob = GETDATE() where eid = '1';
update emp set dob = CURRENT_TIMESTAMP where eid = '1';
update emp set dob = '1993-04-02' where eid = '2';
update emp set dob = '1996-06-30' where eid = '3';
update emp set dob = '2000-12-23' where eid = '4';
update emp set dob = '2001-11-17' where eid = '5';
update emp set dob = '1984-09-16' where eid = '1';

use Animals;
drop table animals;
drop table adoptions;
select * from pets;
truncate table pets;

use Emp_details;
select * from emp;
insert into emp values('6','lucas','34535','gujarat',GETDATE());
insert into emp values('6','dustin','36535','gujarat','1993-04-02');
delete from emp where eid = 6;

SELECT name FROM sys.tables;
SELECT name FROM sys.objects WHERE type_desc = 'USER_TABLE';
SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE table_type = 'BASE TABLE';


alter table emp RENAME emplo;

select * from emp where esalary = 50000 and ecity = 'hyd';
select * from emp where esalary = 30000 or ecity = 'hyd';
select * from emp where esalary between 50000 and 88000;
select * from emp
select ename from emp where esalary in (30000,50000);
select ename from emp where esalary not in (30000,50000);
select * from emp where ename like 'n%';

select max(esalary) max from emp;
select min(esalary) as min from emp;
select sum(esalary) as sum from emp;
select avg(esalary) as avg from emp;

				/* Distinct */
select distinct ename from emp;
select distinct *  from emp;
				
				/* COUNT */
select COUNT(*) from emp;
SELECT COUNT(DISTINCT ecity) as distinct_city FROM emp ;
select COUNT(*) as count_name from emp where ename='dustin';
				
				/* ORDER BY CLAUSE */
select * from emp order by esalary;
select * from emp order by esalary desc;
select * from emp where esalary > 30000 order by esalary;
select * from emp order by ename,esalary desc;
select * from emp where dob < '2000-01-01' order by esalary desc;

				/* GROUP BY CLAUSE */
select ecity as city,count(eid) as num_of_emp 
         from emp group by ecity;
select ecity as city, sum(esalary) as salary from emp 
      group by ecity;
select ename,sum(esalary) from emp group by ename;
select esalary,count(esalary) from emp group by esalary;
select ename,sum(esalary) from emp group by ename having sum(esalary) > 30000;

				/* HAVING CLAUSE */
SELECT ecity,COUNT(esalary) AS COUNT_SALARIES
FROM emp
GROUP BY ecity
HAVING COUNT(esalary) > 1;

				/* TCL COMMANDS */
				/* COMMIT */
select * from emp;
begin tran
delete from emp where esalary=36535
commit;

				/* ROLLBACK */
begin tran
delete from emp where esalary=30000
rollback;

				/* SAVEPOINT */
begin tran
save tran s1
delete from emp where ename = 'will'
save tran s2
rollback tran s1

				/* SET OPERATORS */
use Emp_details
create table emp_2(eid int not null,ename varchar(50),esalary int,ecity varchar(30),dob date);
insert into emp_2 values(1,'alekhya',40000,'AP','2001-08-30');
insert into emp_2 values(2,'jahnavi',45000,'hyd','2000-12-17');
insert into emp_2 values(3,'vandana',60000,'ahmedabad','2002-07-16');
insert into emp_2 values(4,'vikram',36000,'tamilnadu','1995-11-29');
insert into emp_2 values('6','lucas','34535','gujarat','2023-12-06');
select * from emp
select * from emp_2 
select * from emp union select * from emp_2
select * from emp union all select * from emp_2
select * from emp intersect select * from emp_2
select * from emp except select * from emp_2 


use employee
select * from emp_1
select * from emp_2
select * from emp_1 union select * from emp_2
select * from emp_1 union all select * from emp_2
select * from emp_1 intersect select * from emp_2
select * from emp_1 except select * from emp_2 






