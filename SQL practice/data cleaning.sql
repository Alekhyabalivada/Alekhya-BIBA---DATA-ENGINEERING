use org
select name from sys.tables
select * from worker
select * from bonus
select * from title

insert into worker values(009, 'Amitabh', 'Singh', 500000, '2021-02-20', 'Admin')

				/* DATA CLEANSING */
			/*Deleting duplicate data */
/* finding duplicate rows*/
select first_name,count(first_name) as count from worker 
			group by first_name 
			having(count(first_name) > 1)

/*assigning row numbers to each row to find the duplicate rows*/
SELECT first_name,
     ROW_NUMBER() OVER(partition by first_name order BY first_name) AS row_num
FROM worker

/* Deleting the duplicate rows as per row number which is > 1*/

WITH cte AS (SELECT first_name,ROW_NUMBER() OVER (PARTITION BY first_name ORDER BY first_name ASC) AS rn
FROM worker)
DELETE FROM cte
WHERE rn > 1;

/* deleting null values*/
insert into worker(worker_id,first_name,last_name,joining_date,department) values(009, 'Amitabh', 'Singh', '2021-02-20', 'Admin')
select * from worker 
delete from worker where salary is null /* deletes the row where salary is null*/

/* updating the data */
insert into worker(worker_id,first_name,last_name,joining_date,department) values(009, 'Amitabh', 'Singh', '2021-02-20', 'Admin')
update worker set salary = 78239 where worker_id = 9 /* updates the null value with new salary */

update worker set department = upper(department) /* updates department into capital letters*/

/* Coalesce function - used to handle null values */

insert into worker(worker_id,first_name,salary,joining_date,department) values(10,'rishab',54583,'2023-12-31','hr')
insert into worker(worker_id,salary,department) values(11,45642,'sales')

/* using coalesce function*/
select worker_id, coalesce(first_name,last_name) as name from worker  /* it reflets the output even though we have null value in that column*/

/* Replace function - replaces all occurences of a sub-string with new string */
select worker_id,replace(department,'hr','tester') from worker /* replace(column,old-string,new-string)*/

/*Substring - It returns specified portions of text*/
select worker_id,first_name,substring(first_name,1,3) as first,last_name,substring(last_name,1,3) as last from worker /* substring(string/column,start,length) */

/*LTrim - It removes leading spaces from a string.*/
select('   alekhya') as name 
select len('   alekhya') as name /* gives length of string including spaces */
select ltrim('   alekhya') as name /* gives output after removing spaces*/
select len(ltrim('   alekhya')) as name /* gives length of string after removing spaces*/
/*RTrim - It removes trailing spaces from a string.*/
select('   alekhya   ') as name 
select len('   alekhya   ') as name 
select rtrim('alekhya   ') as name /* gives output after removing spaces*/
select len(rtrim('alekhya   ')) as name /* gives length of string after removing spaces*/
/*Trim - It removes leading and trailing spaces from a string */
select trim('   alekhya   ') as name
select len(trim('   alekhya   '))


/* Date format*/
select worker_id,first_name,joining_date,convert(varchar(20),joining_date,3) as converted_date  from worker
/*date format is not built-in function in sql so we used convert(target type,expression/column name,date style)*/

/* Case function using in sql - It performs conditional data transformations*/
select * from worker
select *,grade = case
					when department = 'hr' then '1'
					when department = 'admin' then '2'
					when department = 'sales' then '3'
					else '4'
					end from worker

/* Partiton by in SQL */

select first_name,last_name,department,count(department) 
				over(partition by department) as total from worker















