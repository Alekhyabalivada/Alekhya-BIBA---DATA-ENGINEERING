				/* STRING FUNCTIONS*/
SELECT ASCII ('B') as ASCII /*It returns the  numeric value of character. In this case it returns the value of A as 65.*/
select CHAR(66) /*Returns B, the character equivalent to the ASCII code*/
select LEN('alekhya') /*returns the no. of characters present in the string*/
select REPLACE('alekhykk','kk','a') /*returns alekhya after replacing kk with a*/
select REVERSE('ayhkela') /*reverses the string*/
select str (134.56, 4, 2) /*STR(number, length, decimals)*/
select UPPER('alekhya')
select lower('aLeKhYa') 


				/*DATE FUNCTIONS*/
select getdate() /*returns current date and time*/
select current_timestamp /*returns current date and time*/
select DATEADD(yy,2,'2001-04-29') /*adds 2 years to the given date*/
select DATEDIFF(year,'2002-08-30','2023-12-07')/*shows date difference in years*/
select datepart(yy,'2023-12-07')/*returns year value*/
select day(getdate()) /*returns date*/
select month(getdate())
select year(CURRENT_TIMESTAMP)

				/* MATHEMATICAL FUNCTIONS */
select abs(-34.1) /*returns absolute value*/
select sin(1.414) /*returns angles in radians*/
select CEILING(34.234) /*returns greater value for the specified value*/
select exp(1) 
select floor(15.632)/*returns smaller value for the specified value*/
select log(2)
select round(12.143,2)
				/* RANK FUNCTIONS*/
use student
select * from student
insert into student values(6,'anjali','j&k','8944898399')
select roll_no,name,ROW_NUMBER() over(partition by name order by name) as rank from student
select roll_no,name,rank() over(order by name) as rank from student
select roll_no,name,dense_rank() over(order by name desc) as rank from student
select roll_no,name,NTILE(2) over(order by name) as rank from student 

				/*SYSTEM FUNTIONS*/
select HOST_ID() as host_id
select HOST_NAME() as host_name
SELECT suser_id() as SID
SELECT user_id () as USERID

use student
SELECT db_name() as Databasename

				/*AGGREGATE FUNCTIONS*/
USE Emp_details
select * from emp
select max(esalary) from emp;
select ename,esalary from emp where esalary=( select max(esalary) from emp)
select min(esalary) as min from emp;
select sum(esalary) as sum from emp;
select avg(esalary) as avg from emp;
select COUNT(*) from emp;
SELECT COUNT(DISTINCT ecity) as distinct_city FROM emp ;
select COUNT(*) as count_name from emp where ename='dustin';

				/* GROUP BY CLAUSE */
use Emp_details
select * from emp
select ecity as city,count(eid) as num_of_emp 
         from emp group by ecity;
select ecity as city, sum(esalary) as salary from emp 
      group by ecity;
select ename,sum(esalary) from emp group by ename;
select esalary,count(esalary) from emp group by esalary;


