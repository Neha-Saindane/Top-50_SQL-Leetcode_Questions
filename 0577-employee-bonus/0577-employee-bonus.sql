# Write your MySQL query statement below
select e.name,b.bonus
from employee e left join bonus b
on e.empID = b.empID
where b.bonus is NULL OR b.bonus <1000