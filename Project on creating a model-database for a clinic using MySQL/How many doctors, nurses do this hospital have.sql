-- How many doctors, nurses do this hospital have?
select title, count(s.title_id) total_staff
from staff s
join job_title jt using(title_id)
group by title
order by total_staff desc