-- Query to find total profit
select sum(invoice_total) - (select sum(unit_price_selling)
from return_items
join product using(product_id)) - 

(select sum(unit_price_purchasing)
from orders
join order_items using(order_id)
join product using(product_id)) as total_profit
from orders
