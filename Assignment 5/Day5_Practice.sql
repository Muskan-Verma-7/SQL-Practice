--CREATE TABLE RETURNS
CREATE TABLE returns (
     "Order Id" VARCHAR(50) PRIMARY KEY,
	"Return Reason" VARCHAR(50)

);

--Create Table Employee 
create table employee(
    emp_id int,
    emp_name varchar(20),
    dept_id int,
    salary int,
    manager_id int,
    emp_age int
);

--Inserting Data in employee

insert into employee values(1,'Ankit',100,10000,4,39);
insert into employee values(2,'Mohit',100,15000,5,48);
insert into employee values(3,'Vikas',100,10000,4,37);
insert into employee values(4,'Rohit',100,5000,2,16);
insert into employee values(5,'Mudit',200,12000,6,55);
insert into employee values(6,'Agam',200,12000,2,14);
insert into employee values(7,'Sanjay',200,9000,2,13);
insert into employee values(8,'Ashish',200,5000,2,12);
insert into employee values(9,'Mukesh',300,6000,6,51);
insert into employee values(10,'Rakesh',500,7000,6,50);

--CREATE TABLE DEPARTMENTS
create table dept(
    dep_id int,
    dep_name varchar(20)
);

--INSERTING DATA IN DEPARTMENTS
insert into dept values(100,'Analytics');
insert into dept values(200,'IT');
insert into dept values(300,'HR');
insert into dept values(400,'Text Analytics');

--SELECT STATEMENTS
select * from dept;
select * from employee;
SELECT * FROM returns;
SELECT * FROM superstore_orders;

--Renaming Column names
ALTER TABLE returns
RENAME COLUMN "Order Id" TO order_id;

ALTER TABLE returns
RENAME COLUMN "Return Reason" TO return_reason;

--query to get region wise count of return orders
select region, COUNT(distinct o.order_id) as returned_ord
from superstore_orders o
inner join returns r on o.order_id = r.order_id
group by region;






