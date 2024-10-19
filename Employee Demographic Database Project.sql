create database employeedemographicdb;
use employeedemographicdb;

create table employee_table (
employee_id int primary key not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
age int not null,
gender varchar(50) not null);


create table employees_salary (
employee_id int not null,
jobtitle varchar (50) not null,
salary int not null);


insert into employee_table values
(1001, 'Richard', 'Bolu', 45, 'Male'),
(1002, 'Gostu', 'Berry', 32, 'Male'),
(1003, 'Bella', 'Gambo', 25, 'Female'),
(1004, 'Kemi', 'Josh', 22, 'Female'),
(1005, 'Miles', 'Folarin', 27, 'Male'),
(1006, 'Maggi', 'Mike', 35, 'Female'),
(1007, 'Iris', 'Benjamin', 50, 'Female'),
(1008, 'Ike', 'Luke', 44, 'Male'),
(1009, 'Jim', 'Gusto', 49, 'Male');


insert into employees_salary values
(1001, 'Customer Service', 50000),
(1002, 'Data Analyst', 75000),
(1003, 'Software Develper', 80000),
(1004, 'HR', 65000),
(1005, 'Sales Representative', 77000),
(1006, 'Data Scientist', 100000),
(1007, 'Data Analyst', 80000),
(1008, 'Manager', 250000),
(1009, 'Sales Respresentative', 90000);




