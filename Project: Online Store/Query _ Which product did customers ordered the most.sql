-- Which product did customers ordered the most?
select product_id, p.description, count(product_id) as number_of_product
from order_items
join product p using(product_id)
group by product_id
order by number_of_product desc
limit 7