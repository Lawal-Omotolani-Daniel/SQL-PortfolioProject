use sale_db;
select *
from sales_db;

select months, sum(revenue)
from sales_db
group by months
having months = 'jan';

select customer_name, sum(quantity)
from sales_db
group by customer_name
having customer_name = 'cust d';

select product_name, max(unit_price)
from sales_db
group by product_name
order by max(unit_price) desc;

select payment_type, avg(shipping_fee)
from sales_db
group by payment_type
having payment_type = 'credit card';

select shipper_name
from sales_db;


select product_name, max(revenue)
from sales_db
group by product_name
order by max(revenue);


select months, shipper_name, sum(quantity)
from sales_db
group by months, shipper_name
having shipper_name = 'shipping company a' and months = 'mar';

select quarters, sum(revenue)
from sales_db
group by quarters;

select payment_type, months, sum(revenue)
from sales_db
group by payment_type, months
having months = 'jan';

select region, sum(revenue)
from sales_db
group by region

















