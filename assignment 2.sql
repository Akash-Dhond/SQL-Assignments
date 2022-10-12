select * from employee;
-- ques 1
select * from employee where deptno = 10 and salary > 3000;
select * from students;
-- ques 2
select * from students where marks > 60 and marks < 80;
select * from students where marks > 80;
-- ques 3 
select * from station;
select * from station where id%2 = 0;
--- ques 4
select count(city) - count( distinct city) from station;
--- ques 5 a
SELECT DISTINCT CITY FROM STATION WHERE 
LOWER(LEFT(CITY, 1)) IN ('a','e','i','o','u');
--- ques 5 b 
SELECT DISTINCT CITY 
FROM STATION  
WHERE CITY LIKE '[AEIOU]%' and CITY LIKE '%[aeiou]';
----- ques 5 c
SELECT DISTINCT CITY FROM STATION 
WHERE CITY REGEXP '^[^aeiou].*[^aeiou]$';
----- ques 5 d
SELECT DISTINCT CITY FROM STATION WHERE CITY 
REGEXP '^[^aeiou].*[^aeiou]$';
----- ques 7
select * from emp;
select first_name from emp
where salary > 2000 and hire_date <10 
order By emp_no;
---- ques 8 
show tables;
select * from employee;
select deptno, sum(salary) from employee group by deptno;
---- ques 9
select * from city;
select name from city where population > 100000;
---- ques 10
select sum(population) from city where district = 'california';
--- ques 11
select distinct district,countrycode, avg(population) from city 
group by countrycode;
