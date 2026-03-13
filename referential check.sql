use new_schema;
select o.*
from orders_clean o 
LEFT JOIN customers c 
ON o.customer_id=c.customer_id
where c.customer_id is null;
SELECT oi.*
from order_items_clean oi
left JOIN products p 
ON oi.product_id=p.product_id
where p.product_id is null;
select oi.*
FROM order_items_clean oi
LEFT JOIN orders_clean o 
ON oi.order_id=o.order_id
WHERE o.order_id is null;
