create database Practisedb;
use practisedb;
create table students 
(sid integer, sname char(30), age integer, course char(30));
show tables;
describe students;
insert into students values(1,'john', 25, 'mysql');
insert into students values(2,'mary', 28, 'analytics');
select * from students;
select 3+9;
select 4 is null;
select 4 is not null;
Alter table students add column marks integer;
Alter table students add column love integer;
alter table students drop column love;
alter table students change column marks total_marks integer;
alter table students rename to myclass;
alter table myclass rename to students;
desc students;
create table love(sr_no integer, srname varchar(30));
drop table love;
alter table students drop column total_marks;
insert into students values(3,'akash',24,'data_science');
insert into students values(4,'pushkar',18,'data_analytics');
insert into students values(5,'kansurkar',35,'data_science');
select * from students;
-- when update is not working run the following command
SET SQL_SAFE_UPDATES = 0;
update students 
set sname = 'samidha' 
where sid = 5;
delete from students
where sid =5;
-- deletes all values from table
delete from students;
use practisedb;
show tables;

select * from movies;
select * from myemp limit 15;
select emp_id, first_name, last_name from myemp;
-- derived column
select salary, 0.15* salary from myemp;
select salary, 0.15*salary as net_salary from myemp;
select distinct dep_id from myemp;
select distinct dep_id, mgr_id from myemp;
select * from myemp where dep_id = 60;
-- you can use <> < > = >= <=
-- for even numbers 
select * from myemp where emp_id%2=0;
-- for copying of table 
create table myemp2 as select * from myemp;
drop table myemp2;		
-- % = multiple letters
-- - = single letter
-- starts with some letter 
select * from myemp where first_name like 'J%';	
select * from myemp where first_name like 'J___';
select * from myemp where dep_id not like 80;
select * from myemp where dep_id not in (10,20);
select * from myemp where job_id = 'it_prog' or job_id = 'st_clerk';
select * from myemp where job_id in ('it_prog','st_clerk');
select * from myemp where job_id like '%clerk%';
select hire_date, year(hire_date) as year from myemp;
select now();
select concat(first_name,' ',last_name) from myemp;
select left(first_name,1) from myemp;
select right(first_name,1) from myemp;
select first_name from myemp where left(first_name,1) in ('s','c','y','l');
select lower(first_name),upper(last_name), reverse(first_name) from myemp;
select count(*) from myemp;
select sum(salary) from myemp;
select avg(salary) from myemp;
select round(avg(salary),1) from myemp;
select max(salary), min(salary) from myemp;
select dep_id , avg(salary) from myemp group by dep_id;								
select dep_id , sum(salary) from myemp group by dep_id, mgr_id;	
select avg(salary) from myemp group by job_id, mgr_id;
select * from myemp;
select * from myemp order by dep_id;
select * from myemp order by dep_id desc;
show tables;
select first_name, last_name, title from movies inner join members on movieid = id;
select * from movies left join members on movieid = id;
select first_name, last_name, title from movies right join members on movieid = id; 
select mv.title, mm.first_name, mm.last_name from movies as mv left join members as mm on mv.id=mm.movieid;
select * from students;
create table students3( sid integer unique, sname char(30) not null , age integer check(age>18));
alter table students modify column sid integer unique not null;
select * from authors;
create table authors325 (authorid integer primary key, name char(30));
create table books325 (book_id integer unique, foreign key(authorid) references authors325(authorid));
