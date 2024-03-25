-- How many customers have ordered more than one time? Answer : TWo
select c.customer_id, c.first_name, count(order_id) as number_of_orders
from customer c
join orders o using (customer_id)
group by c.customer_id, c.first_name
having count(order_id) > 1