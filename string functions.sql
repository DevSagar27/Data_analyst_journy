select length('skyfall');
select first_name, length(first_name) from employee_demographics
order by 2;

select upper('sky');
SELECT lower('SKY');

SELECT first_name, UPPER(first_name) from employee_demographics;

select ('       sky         ');
select TRIM('       sky         ');
select LTRIM('       sky         ');
select RTRIM('       sky         ');


-- 
SELECT * from employee_demographics;
SELECT first_name, LEFT(first_name, 4),
RIGHT(first_name,4),
substring(first_name,4,2),
birth_date,
substring(birth_date, 6,2) as birth_month from employee_demographics;

-- replce
select first_name, replace(first_name , 'a','z')
from employee_demographics;
 -- LOCATE
 
 SELECT LOCATE(x, aexander);
 
 select first_name , locate('an', first_name)
 from employee_demographics;
 
 -- CONCAT
 select first_name,last_name,
 CONCAT(first_name, last_name)
 from employee_demographics;
 
 
 



