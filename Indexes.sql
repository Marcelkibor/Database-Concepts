-- create db, tables
create database TestDb;
use TestDb;
create table Employees(
Id int primary key,
Firstname varchar(20),
Lastname varchar(20),
Salary decimal(10,2));
-- create index: an index improves query perfomance 
create index ix_Lname on Employees(Lastname);
-- insert data
insert into Employees(Id,Firstname,Lastname,Salary)values(1,'Allan','Lexico',2332.4232); 
insert into Employees(Id,Firstname,Lastname,Salary)values(2,'Birna','Chiras',2334.32); 
 -- test index perfomance
select * from Employees where Lastname="Chiras";
