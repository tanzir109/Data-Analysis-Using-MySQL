-- Find first five departments based on the value of their instruments
create or replace view department_by_value_instrument as
select d.department_id, d.name, sum(price) total_value
from department d
join stock s using(department_id)
join instrument i using(instrument_id)
group by department_id
order by total_value desc
