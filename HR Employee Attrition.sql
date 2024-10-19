use hr_employeedb;
select *
from hr_employee_attrition;

select *
from hr_employee_attrition
where age >= 40;

select department, avg(dailyrate)
from hr_employee_attrition
group by department;

select department, gender, sum(monthlyincome)
 from hr_employee_attrition
 where department ='sales' and gender ='male'
 group by department, gender;
 
 select jobrole, count(jobrole)
 from hr_employee_attrition
 group by jobrole
 order by count(jobrole) desc;
 
 select maritalstatus, max(monthlyincome)
 from hr_employee_attrition
 where maritalstatus ='married'
 group by maritalstatus;
 
 select numcompaniesworked, avg(distancefromhome)
 from hr_employee_attrition
 where numcompaniesworked >= 2
 group by numcompaniesworked;
 
 select jobsatisfaction, avg(yearsincurrentrole)
 from hr_employee_attrition
 group by jobsatisfaction;
 
 select maritalstatus, jobinvolvement, avg(monthlyincome)
 from hr_employee_attrition
 group by maritalstatus, jobinvolvement
 order by jobinvolvement desc;
 
 select performancerating, avg(monthlyincome)
 from hr_employee_attrition
 group by performancerating;
 
 select yearssincelastpromotion, count(yearssincelastpromotion)
 from hr_employee_attrition
 group by yearssincelastpromotion
 having yearssincelastpromotion < 2