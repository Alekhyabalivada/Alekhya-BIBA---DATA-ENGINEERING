use employee;
select name from sys.tables

              /* DEFAULT CONSTRAINT*/
create table emp_data(id int not null,name varchar(50),salary int default 50000,
			city varchar(50) default 'hyd');
insert into emp_data values(1,'navin',30000,'vizag');
insert into emp_data(id,name) values(2,'siraj');
select * from emp_data

				/*UNIQUE KEY*/
create table emp_1(id int not null unique,name varchar(50),
				salary int default 30000,city varchar(50)); 
insert into emp_1 values(1,'viraj',20000,'pune');
insert into emp_1(id,name,city) values(2,'madhu','mumbai');
insert into emp_1 values(1,'viraj',20000,'pune'); /* shows error because we used same id*/
select * from emp_1

			  /*PRIMARY KEY*/
create table emp_2(id int not null primary key,name varchar(50),
				salary int,city varchar(50));
insert into emp_2 values(1,'rohan',84000,'mp')
insert into emp_2 values(2,'sumith',5000,'up')
insert into emp_2 values(3,'kushith',33300,'hp')
select * from emp_2

			/*FOREIGN KEY*/
create table dept(did int not null primary key,dname varchar(50) not null,
				eid int foreign key references emp_2(id));
insert into dept values(1,'developer',1)
insert into dept values(5,'developer',2)
insert into dept values(10,'developer',3)

select * from dept


			   /*CHECK CONSTRAINT*/

create table emp_3(id int not null primary key,name varchar(50),
				salary int check(salary < 40000))
insert into emp_3 values(1,'jones',34000)
insert into emp_3 values(2,'byres',20000)
insert into emp_3 values(3,'billy',33300)
select * from emp_3
insert into emp_3 values(3,'billy',43300) /*shows error as we limited salary < 40000*/

create table emp_4(id int not null primary key,name varchar(50),
				salary int,city varchar(50));
select * from emp_4
exec sp_rename 'emp_4.id','emp_id','column' /* RENAMING COLUMN */
insert into emp_4 values(1,'jones',34000,'mp')
insert into emp_4 values(2,'byres',20000,'up')
insert into emp_4 values(3,'billy',33300,'hp')
exec sp_rename 'emp_4.emp_id','id','column'
SELECT NAME FROM SYS.TABLES
exec sp_rename 'emp_4','EMP_4' /* RENAME TABLE*/