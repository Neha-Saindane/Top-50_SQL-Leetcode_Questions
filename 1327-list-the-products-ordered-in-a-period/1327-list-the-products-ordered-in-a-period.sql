# Write your MySQL query statement below
# Write your MySQL query statement below
select p.product_name,sum(o.unit) as unit
from Orders o ,Products p
where  month(order_date)=2 and year(order_date)=2020 and o.product_id=p.product_id
group by o.product_id
having sum(o.unit)>=100;