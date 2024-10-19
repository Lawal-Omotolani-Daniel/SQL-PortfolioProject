create database customerdetailsdb;
use customerdetailsdb;

create table customers_table (
customer_id int primary key not null,
first_name varchar(75) not null,
last_name varchar(75) not null,
gender varchar(75) not null,
orders int not null);


create table ordered_table (
orders_id int primary key not null,
customer_id int, foreign key(customer_id) references customers_table(customer_id),
First_Name varchar (75) not null,
product varchar(50) not null,
revenue int not null);


insert into customers_table values
(1, 'Hugh', 'Bill', 'Male', 8900),
(2, 'Nike', 'Mickel', 'Female', 60000),
(3, 'Rudy', 'Mike', 'Male', 20000),
(4, 'Rod', 'James', 'Male', 23500),
(5, 'Ella', 'Miguel', 'Female', 4450),
(6, 'Erica', 'Rick', 'Female', 8700),
(7, 'Toby', 'Yinka', 'Male', 3000),
(8, 'Lori', 'William', 'Female', 32000),
(9, 'Mike', 'Kingsley', 'Male', 6000),
(10, 'Kyle', 'Andrew','Male', 69000);

insert into ordered_table values
(1002, 1,'Hugh', 'Chocolate',5000),
(1003, 2, 'Nike','Orange', 130000),
(1004, 3, 'Rudy','Oat Meal', 94000),
(1005, 4, 'Rod','Beef', 53000),
(1006, 5, 'Ella','Turkey', 345400),
(1007, 6, 'Erica','Beef', 72000),
(1008, 7, 'Toby','Chocolate', 210000),
(1009, 8, 'Lori','Turkey', 710000),
(1010, 9, 'Mike','Oat Meal', 27500),
(1011, 10, 'Kyle','Oange', 115000);