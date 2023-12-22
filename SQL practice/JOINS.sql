				  /* JOINS */
create database student
use student
create table student(roll_no int not null primary key,name varchar(50),
			place varchar(30),phone_no varchar(10));
insert into student values(1,'viraj','hyd',9248983244);
insert into student values(2,'ravin','up',9643653464);
insert into student values(3,'shiv','mp',8436573934);
insert into student values(4,'keerthi','ap',7654693454);
insert into student values(5,'anjali','chennai',9467464565);

select * from student

create table course(course_id int not null primary key,roll_no int)

insert into course values(432,1)
insert into course values(541,2)
insert into course values(745,3)
insert into course values(345,8)
insert into course values(954,9)

select * from student
select * from course


				/* INNER JOIN */
select student.roll_no,student.name,course.course_id 
			from student inner join course on student.roll_no = course.roll_no;

select * from student inner join course on student.roll_no = course.roll_no;
select * from student join course on student.roll_no = course.roll_no;

				/* LEFT JOIN */
select * from student left join course on student.roll_no = course.roll_no;
select student.roll_no,student.name,course.course_id 
			from student left join course on student.roll_no = course.roll_no;

				/*RIGHT JOIN */
select * from student right join course on student.roll_no = course.roll_no;
select student.roll_no,student.name,course.course_id 
			from student right join course on student.roll_no = course.roll_no;

				/* FULL JOIN */
select * from student full outer join course on student.roll_no = course.roll_no;

				/*CROSS JOIN */
select * from student cross join course;

				/*NATURAL JOIN */
select * from student natural join course on student.roll_no = course.roll_no; /* shows error bcoz server not supporting */

				/*EQUI JOIN*/

create table student_2(id int not null primary key,name varchar(50))
create table student_3(id int not null primary key,name varchar(50))

select * from student_2
select * from student_3

insert into student_2 values(10,'kishan')
insert into student_2 values(30,'ajith')
insert into student_2 values(60,'raj')
insert into student_2 values(78,'zoya')
insert into student_2 values(40,'hina')
insert into student_2 values(50,'varun')
insert into student_3 values(10,'rishi')
insert into student_3 values(35,'nihal')
insert into student_3 values(50,'tine')
insert into student_3 values(100,'alekhya')
insert into student_3 values(70,'varun')

select * from student_2 join student_3 on student_2.id=student_3.id
select * from student_2,student_3 where student_2.id = student_3.id
select * from student_2 join student_3 on student_2.name=student_3.name

				/*NON EQUI JOIN*/
select * from student_2,student_3 where student_2.id < student_3.id
select * from student_2,student_3 where student_2.id <= student_3.id
select * from student_2,student_3 where student_2.id > student_3.id
select * from student_2,student_3 where student_2.id >= student_3.id

create table section(id int not null primary key,name varchar(50),section varchar(10))
select * from section
insert into section values(10,'kishan','A')
insert into section values(30,'ajith','C')
insert into section values(60,'raj','B')
insert into section values(78,'zoya','B')
insert into section values(40,'hina','C')
insert into section values(50,'varun','A')

select * from student_2
select * from section

select student_2.id,student_2.name,section.section from student_2 join section on student_2.id = section.id
		where section.section='A'