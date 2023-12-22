select name from sys.tables
exec sp_renamedb 'Product','data'
use data

create table emp_data(eid int not null primary key,name varchar(50),location varchar(50),phone_no varchar(12),salary int,dept varchar(20))
insert into emp_data values(1001,'ravin','mp','9834583999',60000,'Tech')
insert into emp_data values(1002,'viren','up','9987499534',73548,'HR')
insert into emp_data values(1003,'tanya','mumbai','9825234323',30000,'IT')
insert into emp_data values(1004,'mira','vizag','9949593489',88000,'Sales')
insert into emp_data values(1005,'tiru','mp','8278524392',90000,'Finance')
insert into emp_data values(1006,'ammy','vizag','7014424234',100000,'IT')
insert into emp_data values(1007,'akhil','chennai','9988424254',77347,'Sales')
insert into emp_data values(1008,'piyush','up','9832944849',50243,'HR')
insert into emp_data values(1009,'sahil','mp','8457934787',88989,'HR')
insert into emp_data values(1010,'maya','mumbai','8894357938',88000,'Tech')

select * from emp_data



