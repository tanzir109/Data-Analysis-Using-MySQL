-- Find total_sales after substracting price for any returned product

select sum(invoice_total) - (select sum(unit_price_selling) as total_return_price
from return_items
join product using(product_id)) as total_sales_minus_return
from orders


