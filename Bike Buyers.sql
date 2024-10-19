use biker_buyers;
select *
from bike_buyers;

select gender, avg(income)
from bike_buyers
group by gender;

select marital_status, count(purchased_bike)
from bike_buyers
where purchased_bike = 'yes'
group by marital_status;

select marital_status, purchased_bike, count(purchased_bike)
from bike_buyers
group by marital_status, purchased_bike
having purchased_bike = 'yes';

select region, avg(age)
from bike_buyers
group by region;

select count(education)
from bike_buyers
where education = 'graduate degree';

select distinct(marital_status)
from bike_buyers;

select count(purchased_bike)
from bike_buyers
where purchased_bike = 'yes';

select education, sum(cars)
from bike_buyers
group by education
