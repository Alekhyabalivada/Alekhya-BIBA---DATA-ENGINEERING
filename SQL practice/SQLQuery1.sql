create database org
use org
create table worker(worker_id int not null primary key,first_name varchar(50),last_name varchar(50),salary int,joining_date date,department varchar(20))
select * from worker
insert into worker values(001, 'Monika', 'Arora', 100000, '2021-02-20', 'HR')
insert into worker values(002, 'Niharika', 'Verma', 80000, '2021-06-11', 'Admin')
insert into worker values(003, 'Vishal', 'Singhal', 300000, '2021-02-20', 'HR')
insert into worker values(004, 'Amitabh', 'Singh', 500000, '2021-02-20', 'Admin')
insert into worker values(005, 'Vivek', 'Bhati', 500000, '2021-06-11', 'Admin')
insert into worker values(006, 'Vipul', 'Diwan', 200000, '2021-06-11', 'Account')
insert into worker values(007, 'Satish', 'Kumar', 75000, '2021-01-20', 'Account')
insert into worker values(008, 'Geetika', 'Chauhan', 90000, '2021-04-11', 'Admin');

create table bonus (worker_ref_id int foreign key references worker(worker_id),bonus_amount money,bonus_date date)
insert into bonus values (001, 5000, '2023-02-20')
insert into bonus values (002, 3000, '2023-06-11')
insert into bonus values (003, 4000, '2023-02-20')
insert into bonus values (001, 4500, '2023-02-20')
insert into bonus values (002, 3500, '2023-06-11');
select * from bonus

create table title(worker_ref_id int foreign key references worker(worker_id),worker_title varchar(50),affected_from date)
insert into title values(001,'Manager', '2023-02-20')
insert into title values (002, 'Executive', '2023-06-11')
insert into title values (008, 'Executive', '2023-06-11')
insert into title values (005, 'Manager', '2023-06-11')
insert into title values (004, 'Asst. Manager', '2023-06-11')
insert into title values (007, 'Executive', '2023-06-11')
insert into title values (006, 'Lead', '2023-06-11')
insert into title values (003, 'Lead', '2023-06-11');
select * from title

select * from worker
select * from bonus
select * from title

/* Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>*/
select first_name as worker_name from worker

/*Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case*/
select upper(first_name) from worker

/*Write an SQL query to fetch unique values of DEPARTMENT from the Worker table*/
select distinct(department) from worker

/*Write an SQL query to print the first three characters of  FIRST_NAME from the Worker table*/
select SUBSTRING(first_name,1,3) from worker /* substring(col_name,1,3)*/

/*Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table*/
select CHARINDEX('a','Amitabh') from worker where first_name = 'Amitabh' /* charindex(search char,from string)*/

/*Write an SQL query to print the FIRST_NAME from the Worker table after removing white spaces from the right side*/
select RTRIM(first_name) from worker

/*Write an SQL query to print the DEPARTMENT from the Worker table after removing white spaces from the left side*/
select ltrim(department) as department from worker

/*Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length*/
select distinct(department) as department,len(department) as length from worker

/*Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’*/
select replace(first_name,'a','A') as replace,first_name from worker

/*Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME. A space char should separate them.*/
select CONCAT(first_name,' ',last_name) as complete_name from worker

/*Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending*/
select * from worker order by first_name

/*Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending*/
select * from worker order by first_name,department desc

/*Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table*/
select * from worker where first_name in ('vipul','satish')

/*Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from the Worker table*/
select * from worker where first_name not in ('vipul','satish')

/*Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”*/
select * from worker where department = 'Admin'

/*Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’*/
select * from worker where first_name like '%a%'

/*Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’*/
select * from worker where first_name like '%a'

/*Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets*/
select * from worker where first_name like '_____h'

/*Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000*/
select * from worker where salary between 100000 and 500000

/*Write an SQL query to print details of the Workers who joined in Feb 2021*/
select * from worker where year(joining_date) = 2021 and month(joining_date) = 2

/*Write an SQL query to fetch the count of employees working in the department ‘Admin’*/
select count(*) as count from worker where department = 'admin'

/*Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000*/
select concat(first_name,' ',last_name) from worker where salary >= 50000 and salary <= 100000

/*Write an SQL query to fetch the number of workers for each department in descending order*/
select department,count(*) as dept_count from worker group by department order by dept_count desc

/*Write an SQL query to print details of the Workers who are also Managers*/
select * from worker where worker_id in (select worker_ref_id from title where worker_title = 'manager')

SELECT DISTINCT W.FIRST_NAME, T.WORKER_TITLE
FROM Worker W
INNER JOIN Title T
ON W.WORKER_ID = T.WORKER_REF_ID
AND T.WORKER_TITLE in ('Manager');

/*Write an SQL query to fetch duplicate records having matching data in some fields of a table*/
SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;

/*Write an SQL query to show only odd rows from a table*/
select * from worker where worker_id % 2 != 0
SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) <> 0 /*mod is not built-in function*/

/*Write an SQL query to show only even rows from a table*/
select * from worker where worker_id % 2 = 0

/*Write an SQL query to clone a new table from another table*/
select * into worker_new from worker
select * from worker_new

/*Write an SQL query to fetch intersecting records of two tables*/
select * from worker intersect select * from worker_new

/*Write an SQL query to show records from one table that another table does not have*/
/*select * from bonus except select * from title*/

/*Write an SQL query to show the current date and time*/
select getdate()
select current_timestamp

/*Write an SQL query to show the top n (say 10) records of a table*/
select top 5 * from worker order by salary desc

/*Write an SQL query to determine the nth (say n=5) highest salary from a table*/
select top 1 salary from(select distinct top 5 salary from worker order by salary desc) result order by salary

/*Write an SQL query to determine the 5th highest salary without using the TOP or limit method*/
with result as 
			(select salary,dense_rank() over(order by salary desc) as denserank from worker)
	select salary from result where result.denserank = 5

/*Write an SQL query to fetch the list of employees with the same salary*/
Select distinct W.WORKER_ID, W.FIRST_NAME, W.Salary 
from Worker W, Worker W1 
where W.Salary = W1.Salary 
and W.WORKER_ID != W1.WORKER_ID;

/*Write an SQL query to show the second-highest salary from a table*/
select max(salary)as second_max from worker where salary < (select max(salary) from worker)

/*Write an SQL query to show one row twice in the results from a table*/
select FIRST_NAME, DEPARTMENT from worker W where W.DEPARTMENT='HR' 
union all 
select FIRST_NAME, DEPARTMENT from Worker W1 where W1.DEPARTMENT='HR';

/*Write an SQL query to fetch intersecting records of two tables*/
select * from worker intersect select * from worker_new


/*Write an SQL query to fetch the first 50% of records from a table*/
select * from worker where worker_id <= (select count(worker_id)/2 from worker)

/*Write an SQL query to fetch the departments that have less than five people in them*/
SELECT DEPARTMENT, COUNT(WORKER_ID) as 'Number of Workers' FROM Worker GROUP BY DEPARTMENT HAVING COUNT(WORKER_ID) < 5;

/*Write an SQL query to show all departments along with the number of people in there*/
SELECT DEPARTMENT, COUNT(department) as 'Number of Workers' FROM Worker GROUP BY DEPARTMENT 

/*Write an SQL query to show the last record from a table*/
Select * from Worker where WORKER_ID = (SELECT max(WORKER_ID) from Worker);

/*Write an SQL query to fetch the first row of a table*/
Select * from Worker where WORKER_ID = (SELECT min(WORKER_ID) from Worker);

/*Write an SQL query to fetch the last five records from a table*/
select * from worker order by worker_id offset(select count(*) - 5 from worker) rows

/*Write an SQL query to print the names of employees having the highest salary in each department*/
SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Worker group by DEPARTMENT) as TempNew 
Inner Join Worker t on TempNew.DEPARTMENT=t.DEPARTMENT 
 and TempNew.TotalSalary=t.Salary;

/*Write an SQL query to fetch three max salaries from a table*/
select distinct salary from worker a where 3 >= (select count(distinct salary) from worker b where a.salary <= b.salary) order by a.salary desc

/*Write an SQL query to fetch three min salaries from a table*/
select distinct salary from worker a where 3 >= (select count(distinct salary) from worker b where b.salary <= a.salary) order by a.salary desc

/*Write an SQL query to fetch nth max salaries from a table*/
SELECT distinct Salary from worker a WHERE n >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;

/*Write an SQL query to fetch departments along with the total salaries paid for each of them*/
 SELECT DEPARTMENT, sum(Salary) from worker group by DEPARTMENT;

/*Write an SQL query to fetch the names of workers who earn the highest salary*/
SELECT FIRST_NAME, SALARY from Worker WHERE SALARY=(SELECT max(SALARY) from Worker)
