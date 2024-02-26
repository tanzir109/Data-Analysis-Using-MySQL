create or replace view days_take_to_test as
select ft.test_id, tt.name, format(sum(datediff(test_date, test_prescribed_date)), "NO") days_to_test
from fees_test ft
join test_type tt using(test_id)
group by ft.test_id, tt.name
order by days_to_test desc