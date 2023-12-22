create database SQL
use SQL
create table details(roll_no int not null primary key,name varchar(50),
			place varchar(30),phone_no varchar(10),age int);
insert into details values(101,'alekhya','ap',9248983244,22);
insert into details values(102,'krishna','vizag',9643653464,23);
insert into details values(103,'vandana','ahmedabad',8436573934,21);
insert into details values(104,'jahnavi','ap',7654693454,20);

select * from details

create table course(course_id int not null,roll_no int)

insert into course values(12345,101)
insert into course values(23456,102)
insert into course values(12345,103)
insert into course values(23456,104)
insert into course values(17321,105)
insert into course values(17321,108)
insert into course values(95472,109)

select * from details
select * from course

				/* INNER JOIN */
select details.roll_no,details.name,course.course_id 
			from details inner join course on details.roll_no = course.roll_no;

select * from details inner join course on details.roll_no = course.roll_no;
select * from details join course on details.roll_no = course.roll_no;

				/* LEFT JOIN */
select * from details left join course on details.roll_no = course.roll_no;
select details.roll_no,details.name,course.course_id 
			from details left join course on details.roll_no = course.roll_no;

				/*RIGHT JOIN */
select * from details right join course on details.roll_no = course.roll_no;
select details.roll_no,details.name,course.course_id 
			from details right join course on details.roll_no = course.roll_no;
			
				/* FULL JOIN */
select * from details full outer join course on details.roll_no = course.roll_no;


				/*CROSS JOIN */
select * from details cross join course;

				/*SUB-QUERIES*/

/* Fetch the details of the students with course_id 12345*/
select * from details where roll_no in
					(select roll_no from course where course_id = 12345)

/* Fetch the course_id of the students who are from ap */
select * from course where roll_no in 
					(select roll_no from details where place = 'ap')

/* delete the details of the student whose course_id is 12345*/
delete from details where roll_no in
					(select roll_no from course where course_id = 12345)

/*update course_id as 17321 for student with name vandana*/
update course set course_id= 17321 where roll_no in (select roll_no from details where name='vandana')

					/*Data manipulation commands*/
		/* SELECT command */
select * from details
select roll_no,name,phone_no from details

		/* INSERT command*/
insert into details(roll_no,name,place) values(106,'akshay','up');

		/* DELETE command*/
delete from details where roll_no = 106

		/*UPDATE command*/
update details set age = 25 where name = 'akshay'


					/*data manipulation commands using group by and having clause*/

				/*GROUP BY*/
/*Fetch details of the student place who is having max age from distinct places*/
select place,max(age) as max_age from details group by place;


/*Fetch the count of students from each place*/
SELECT place,COUNT(roll_no) AS count
FROM details
GROUP BY place
HAVING COUNT(roll_no) >= 1;




