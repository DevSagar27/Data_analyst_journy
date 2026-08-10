select  dem.first_name, dem.last_name, gender , avg(salary) AS avg_salary
from employee_demogrphics dem
join employee_salary sal
on dem.employee_id  = sal.employee_id
group by dem.first_name, dem.last_name;

select dem.first_name, dem.last_name , avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;


select dem.first_name, dem.last_name,gender, 
sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;
 
-- row number
-- no duplica6e rows
-- runk num

select dem.first_name, dem.last_name,gender,salary, 
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as rank_num
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;
 


