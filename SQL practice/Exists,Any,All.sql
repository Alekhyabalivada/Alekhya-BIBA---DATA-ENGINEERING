
				/* Exists,Any,All,Not exists*/
use student
select name from sys.tables
select * from student
select * from student where roll_no = any (select roll_no from student where name = 'anjali')
select * from student where roll_no = all(select roll_no from student where name = 'anjali')
select * from student where exists (select * from student where name = 'anjali')
select * from student where not exists (select * from student where name = 'anjali')



