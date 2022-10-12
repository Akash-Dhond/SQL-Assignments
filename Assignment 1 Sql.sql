-- ques 2
create database assignmentsdb;
show databases;
use assignmentsdb;
show tables;
select * from customers;
-- ques 1 
create database assignment;
use assignment;
show tables;
--ques 3
CREATE TABLE authors (
    author_id integer,
    name char(150)
);
insert into authors values
(1, 'J K Rowling'),
(2,'Thomas Hardy'),
(3,'Oscar Wilde'),
(4,'Sidney Sheldon'),
(5,'Alistair Maclean'),
(6,'Jane Autsen');
insert into authors values
(7, 'J roy'),
(8,'joss butller'),
(9,'joe biden'),
(10,'j trumph');
select * from authors;
SET SQL_SAFE_UPDATES = 0;
update authors
set name = 'Alastair McNeal'
where name = 'Alistair Maclean' ;
-- ques 4
CREATE TABLE books (
    bookid integer,
    title char(150),
    author_id integer
);
show tables;
insert into books values
(1,'Harry Potter and the Philosophers Stone',1),
(2,'Harry Potter and the Chamber of Secrets',1),
(3,'Harry Potter and the Half-Blood Prince',1),
(4,'Harry Potter and the Goblet of Fire',1),
(5,'Night Without End',5),
(6,'Fear is the Key',5),
(7,'Where Eagles Dare',5),
(8,'Sense and Sensibility',6),
(9,'Pride and Prejudice',6),
(10,'Emma',6),
(11,'Random Book',22);
select * from books;
delete from books
where title = 'Random Book' ;
-- ques 5
rename table books to favbooks;
rename table authors to favauthors;
show tables;
--ques 6
create table products 
( product_id integer primary key auto_increment,
product_name char(255) not null unique ,
description char(255),
supplier_id integer);
create table suppliers 
( supplier_id integer primary key,
supplier_name char(255),
location char(255));
create table stock
(id integer primary key,
Product_id integer ,
balance_stock integer);
-- ques 7
insert into products values
(1, 'fan','samsung',60),
(2, 'cooler','samsung',60),
(3, 'ac','samsung',60),
(4, ' fridge','onida',90),
(5, 'heater','onida',90),
(6,'mixer','bajaj',100),
(7,'computer','hp',110);
insert into suppliers values
(60, 'samsung','mumbai'),
(90, 'onida', 'banglore'),
(100, 'bajaj', 'pune'),
(110, 'hp', 'kolkata');
insert into stock values
(1,60,10),
(2,90,20),
(3,100,25),
(4,110,16);
-- ques 8
alter table supplier modify column supplier_name char unique not null;
describe suppliers;
show tables;
show databases;
use assignmentsdb;
-- ques 9
select * from employee;
alter table employee drop column deptno;
alter table employee add column deptno integer;
update employee
set deptno = 20
where empid%2 = 0;
update employee
set deptno = 30
where empid%3 = 0;
update employee
set deptno = 40
where empid%4 = 0;
update employee
set deptno = 50
where empid%5 = 0;
-- ques 10
create unique index idx using hash on employee(empid);






