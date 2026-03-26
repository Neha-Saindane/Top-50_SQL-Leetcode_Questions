# Write your MySQL query statement below
# Write your MySQL query statement below
select u.product_id,ROUND(SUM(u.units * p.price) / SUM(u.units), 2) as average_price
from Prices p, UnitsSold u
where p.product_id=u.product_id and u.purchase_date BETWEEN p.start_date AND p.end_date
group by u.product_id
union

select p.product_id,
       0 as average_price
from Prices p
where p.product_id not in (
    select distinct product_id
    from UnitsSold
);