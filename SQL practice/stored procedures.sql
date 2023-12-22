use data
select * from emp_data

				/* Creating procedure */

create procedure emp_datas as select * from emp_data
exec emp_datas

				/* creating procedure using parameteers*/
create procedure emp_city @city varchar(20) as select * from emp_data where location = @city
exec emp_city @city = 'up'

create procedure emp_city1 @city varchar(20) as select name from emp_data where location = @city
exec emp_city1 @city = 'up'

create procedure emp_name1 @city varchar(20),@ename varchar(50) as 
			select * from emp_data where location = @city and name =@ename
exec emp_name1 @city = 'up',@ename='viren'

				/* SUBTOTAL IN SQL */
use product
select name from sys.tables
create table SalesList
(SalesMonth VARCHAR(20), SalesQuartes VARCHAR(5), SalesYear  SMALLINT, SalesTotal MONEY)
INSERT INTO  SalesList VALUES ('March','Q1',2019,60)
INSERT INTO SalesList VALUES ('March','Q1',2020,50)
INSERT INTO SalesList VALUES ('May','Q2',2019,30)
INSERT INTO SalesList VALUES ('July','Q3',2020,10)
INSERT INTO SalesList VALUES ('November','Q4',2019,120)
INSERT INTO SalesList VALUES ('October','Q4',2019,150)
INSERT INTO SalesList VALUES ('November','Q4',2019,180)
INSERT INTO SalesList VALUES ('November','Q4',2020,120)
INSERT INTO SalesList VALUES ('July','Q3',2019,160)
INSERT INTO SalesList VALUES ('March','Q1',2020,170)

select * from saleslist

				/* ROLL-UP & SUB-TOTAL */
SELECT  SalesYear, SUM(SalesTotal) AS SalesTotal FROM SalesList
    GROUP BY ROLLUP(SalesYear)

	
SELECT  SalesYear,SalesQuartes, SUM(SalesTotal) AS SalesTotal
    FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes)


SELECT  SalesYear,SalesQuartes,SalesMonth ,SUM(SalesTotal) AS SalesTotal
FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes, SalesMonth)


SELECT SalesYear,
SalesQuartes, 
SUM(SalesTotal) AS SalesTotal ,
GROUPING(SalesQuartes) AS SalesQuarterGrp,
GROUPING(SalesYear) AS SYearGrp
FROM SalesList
GROUP BY ROLLUP(SalesYear, SalesQuartes)


SELECT SalesMonth,SalesTotal , 
ROW_NUMBER() OVER(ORDER BY NEWID()) AS RowNumber FROM SalesList











