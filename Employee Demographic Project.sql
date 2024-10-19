use employeedemographicdb;
select *
from employee_table
order by 4 desc, 5 desc;

USE HIT_DB;
SELECT *
FROM EMPLOYEES_SALARY;


select *
from employee_table
WHERE FIRST_NAME <> 'IKE';

use hit_db;
SELECT *
FROM EMPLOYEES_SALARY
order by salary desc;

select *
from employee_table
where age >= 30 or gender = 'male';

select *
from employee_table
where last_name in ('josh', 'mike');

select gender, age, count(gender)
from employee_table
where age > 30
group by gender, age
order by count(gender); 

use employeedemographicdb;
select *
from employee_table;

update employee_table
set age = 55 
where employee_id = 1007;

delete 
from employee_table
where employee_id = 1009;

select *
from employee_table



