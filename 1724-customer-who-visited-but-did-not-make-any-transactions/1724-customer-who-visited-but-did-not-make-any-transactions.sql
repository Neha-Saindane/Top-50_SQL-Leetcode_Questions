# Write your MySQL query statement below
select  v.customer_id, count(*) as count_no_trans
from visits as v 
left join transactions as t 
on v.visit_id = t.Visit_id where t.transaction_id is NULL
group by v.customer_id;