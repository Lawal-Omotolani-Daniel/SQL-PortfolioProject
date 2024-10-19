use customerdetailsdb;
select *
from customers_table;

use customerdetailsdb;
select *
from ordered_table;

select first_name, last_name, avg(revenue)
from customers_table 
join ordered_table
on customers_table.customer_id = ordered_table.customer_id
where first_name = 'rod'
group by first_name, last_name;


select *
from customers_table
union
select *
from ordered_table;

select first_name, last_name, orders,
CASE
     when orders > 20000 then 'high'
     WHEN ORDERS BETWEEN 6000 AND 10000 THEN 'AVERAGE'
     else 'low'
end as rating
from customers_table
order by orders;

select *
from customers_table
union
select *
from ordered_table;

select FIRST_NAME, LAST_NAME, GENDER, PRODUCT, REVENUE,
CASE
    WHEN PRODUCT = 'CHOCOLATE' THEN REVENUE + (REVENUE * .12)
    WHEN PRODUCT = 'BEEF' THEN REVENUE + (REVENUE * .20)
    WHEN PRODUCT = 'TURKEY' THEN REVENUE + (REVENUE * .015)
    ELSE PRODUCT + (REVENUE * .08)
END  AS REVENUE_WITH_PROFIT  
from customers_table
JOIN ORDERED_TABLE
ON CUSTOMERS_TABLE.CUSTOMER_ID = ORDERED_TABLE.CUSTOMER_ID;

select *
from customers_table;

update customers_table
set first_name = 'Jack'
where customer_id = 9;

select concat(first_name, '' ,last_name) as Fullname
from customers_table;

select *
from customers_table as customer
join ordered_table as orders
on customer.customer_id = orders.customer_id;

select first_name, last_name, gender, revenue,
count(gender) over (partition by gender) as totalgender
from customers_table as customer
join ordered_table as orders;

select gender, count(gender) as totalgender
from customers_table as customer
join ordered_table as orders
on customer.customer_id = orders.customer_id
group by gender; 

with CTE_CUSTOMERS as
(select first_name, last_name, gender, revenue,
count(gender) over (partition by gender) as totalgender
from customers_table as customer
join ordered_table as orders
where revenue = 60000
)
select *
from CTE_CUSTOMERS;


select customer.first_name, orders.first_name
from customers_table as customer
join ordered_table as orders
on customer.first_name = orders.first_name;

Using Substring

select customer.first_name, substring(customer.first_name, 1,3), orders.first_name,
substring(orders.first_name, 1,3)
from customers_table as customer
join ordered_table as orders
on substring(customer.first_name, 1,3) = substring(orders.first_name, 1,3)

USE SUBSTRING ON THINGS LIKE
GENDER  - TO GET HOW MANY HAS THE SAME LASTNAME
LAST_NAME  - TO GET HOW MANY HAS THE SAME LASTNAME
AGE  -  TO GET HOW MANY HAS THE SAME AGE
DATE OF BIRTH  - TO GET HOW MANY HAS THE SAME DATE OF BIRTH
YOU CAN USE SUBSTRING TO MARCH THINGS FROM DIFFERENT TABLE;

create procedure test
as
select *
from customers_table;

call customers_table;

call customers_table(orders);

call customers_table(@first_name);

select @first_name as totalname;

call customers_table(@last_name);

