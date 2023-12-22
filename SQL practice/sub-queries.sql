use student
create table student_2(id int not null primary key,name varchar(50))
insert into student_2 values(10,'kishan')
insert into student_2 values(30,'ajith')
insert into student_2 values(60,'raj')
insert into student_2 values(78,'zoya')
insert into student_2 values(40,'hina')
insert into student_2 values(50,'varun')

create table section(id int not null primary key,name varchar(50),section varchar(10))
insert into section values(10,'kishan','A')
insert into section values(30,'ajith','C')
insert into section values(60,'raj','B')
insert into section values(78,'zoya','B')
insert into section values(40,'hina','C')
insert into section values(50,'varun','A')

select * from student_2
select * from section

create procedure stu_data as select name from student_2 where id = 40
exec stu_data

				/* SUB-QUERIES */

				/* Select Query */
select student_2.id,student_2.name,section.section from student_2 join section on student_2.id = section.id
		where section.section='A'
select * from student_2 where id in (select id from section where section = 'A')

				/*Insert Query */
insert into student_2 (id,name) select id,section from section
select * from student_2
select * from student_3
insert into student_2 select * from student_3
select * from student_2

				/* Delete Query */
DELETE FROM Student_2 
WHERE id IN ( SELECT id 
                   FROM section
                   WHERE name = 'kishan');

				/*Update Query*/
update section set section='a' where name in (select name from student_2 where name='hina')


create database Query
use query
create table stu(sid int not null primary key,sname varchar(40),semail varchar(50))
create table stu_course(sid int,cid int,enroll_date DATE);
create table dept(did int not null primary key,dname varchar(50))
create table course(cid int not null primary key,cname varchar(40),ccredits int,cfee float,did int)
select name from sys.tables

insert into stu(sid,sname,semail) values (1,'harry potter','harry@gmail.com');
insert into stu(sid,sname,semail) values (2,'ronald weasley','ron@gmail.com');
insert into stu(sid,sname,semail) values (3,'hermione granger','hermione@gmail.com');
insert into dept(did,dname) values (1,'IT');
insert into dept(did,dname) values (2,'COMPS');
insert into course(cid,cname,ccredits,cfee,did) values (1,'SQL Programming', 80, 12000, 1);
insert into course(cid,cname,ccredits,cfee,did) values (2,'Java Programming', 100, 18000, 2);
insert into course(cid,cname,ccredits,cfee,did) values (3,'Angular Programming', 80, 15000, 1);
insert into stu_course(sid,cid,enroll_date) values (1,1,'2022-05-21');
insert into stu_course(sid,cid,enroll_date) values (1,3,'2022-05-21');
insert into stu_course(sid,cid,enroll_date) values (2,1,'2022-05-18');
insert into stu_course(sid,cid,enroll_date) values (3,2,'2022-05-20');
insert into stu_course(sid,cid,enroll_date) values (3,3,'2022-05-15');

select * from stu
select * from dept
select * from course
select * from stu_course

				/* NESTED QUERY */

/* Display all students that have enrolled in sql programming */
select /*sid,*/sname from stu where sid in 
				(select sid from stu_course where cid 
							in (select cid from course where cname = 'SQL Programming'))
/* display courses that belong to IT department */ 

select sname
from stu
where sid IN (select sid 
			  from stu_course 
			  where cid IN ( select cid 
							 from course where did IN (select did 
													   from dept 
													   where dname='IT')))
/* display all students that are in IT dept */
select sname from stu where sid in
				(select sid from stu_course where cid in
					(select cid from course where did in 
						(select did from dept where dname = 'IT')))

/* display the names of the students those who are enrolled on date 2022-05-21 */

select sname from stu where sid in (select sid from stu_course where enroll_date = '2022-05-21')


