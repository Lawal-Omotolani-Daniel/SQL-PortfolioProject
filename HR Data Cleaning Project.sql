# Cleaning Data in SQL Queries

use projects;
select *
from hr;

describe hr;

select birthdate from hr;

set sql_safe_updates = 0;

update hr
set birthdate = case
 when birthdate like'%/%'then date_format(str_to_date(birthdate,'%m/%d/%Y'),'%Y-%m-%d') 
 when birthdate like'%-%'then date_format(str_to_date(birthdate,'%m-%d-%Y'),'%Y-%m-%d') 
 else null
end;

ALTER TABLE hr
MODIFY COLUMN BIRTHDATE DATE;

select birthdate from hr;

update hr
set hire_date = case
 when hire_date like'%/%'then date_format(str_to_date(hire_date,'%m/%d/%Y'),'%Y-%m-%d') 
 when hire_date like'%-%'then date_format(str_to_date(hire_date,'%m-%d-%Y'),'%Y-%m-%d') 
 else null
end;

alter table hr
modify column hire_date DATE;

select hire_date from hr;

UPDATE hr
SET termdate = date(str_to_date(termdate,'%Y-%m-%d %H:%i:%s UTC'))
WHERE termdate IS NULL and termdate !='';

ALTER TABLE hr 
MODIFY COLUMN termdate DATE;

SET SQL_SAFE_UPDATES = 0;

select termdate from hr;

DESCRIBE HR;

SET SQL_MODE ='';

select * from hr;

ALTER TABLE hr add column age int;

update hr
set age =timestampdiff(Year, birthdate, CURDATE()); 

SELECT BIRTHDATE, AGE FROM HR;

SELECT MIN(AGE) AS youngest, MAX(AGE) as oldest
from hr;

select count(*) from hr where age < 18;

 






