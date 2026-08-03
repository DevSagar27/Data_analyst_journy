-- where caluse is used to help  filter  our record or rows of data  
-- we are going to retun rows that fullfill a specific condition
select * where first_name = 'leslie';
-- compariosion operators > , <, ,<= , >=
select * from employee_salary where salary > 50000;
select * from employee_salary where salary >= 50000;
select * from employee_salary where salary < 50000;
select * from employee_salary where salary <= 50000;

-- equal to not equal to
select * from employee_demographics where gender = 'female';
select * from employee_demographics where gender != 'female';

-- date 
select * from employee_demographics where birth_date > '1962-08-28';

-- AND OR NOT LOGICAL OPERATORS
select * from employee_demographics 
where birth_date > '1985-08-28'
AND gender = 'male';

 select * from employee_demographics where 
 birth_date < '1985-01-01'
 OR gender  = 'male';

select * from employee_demographics
where birth_date > '1985-01-01'
OR NOT gender = 'male';

select * from employee_demographics where  first_name = 'Leslie' and age = 44;
select * from employee_demographics where  (first_name = 'Leslie' and age = 44) or age > 44;

-- like statement we can look for specific patterns
select * from employee_demographics where first_name like 'jer';
select * from employee_demographics where first_name like '%jer%';-- putting % sign after any word or character means looking anything after that  and adding before means   	
select * from employee_demographics where first_name like '%a%';
select * from employee_demographics where first_name like 'a__';
select * from employee_demographics where first_name like 'a___';
select * from employee_demographics where first_name like 'a___%';
select * from employee_demographics where birth_date like '1989%';
-- aggrirage function grouping 
select gender from employee_demographics GROUP BY gender;
select  gender , AVG(age) from employee_demographics group by gender;
select * from  employee_salary;
SELECT occupation, salary FROM employee_salary group by occupation, salary;
SELECT gender, AVG(age), COUNT(age), MIN(age), MAX(age) FROM employee_demographics group by gender;
select * from employee_demographics order by first_name desc;
SELECT * from employee_demographics order by age, gender;	
select distinct gender from employee_demographics ;
-- diffn between where and having
-- two filters where- row level having - aggrigate level
SELECT occupation, avg(salary) from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000;
-- limit and aliasing
select * from employee_demographics  limit 3;
select * from employee_demographics order by age desc limit 3;
select gender ,avg(age) as age from
employee_demographics group by gender 
having avg(age) > 40;
 
 


