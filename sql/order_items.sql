create table order_items(
order_id INT,
product_id INT,
quantity INT);
use new_schema;
truncate table order_items;
show variables like 'secure_file_priv';
load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/order_items_big.csv"
 into table order_items
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;
select count(*) from order_items;
/* Null Value check */ select * from order_items where order_id is null or product_id is null 
or quantity is null;
 /* Index */ CREATE index idx_order_product ON order_items(order_id, product_id);
 /* Duplicate */ select order_id, product_id, count(*) from order_items group by order_id,  product_id
 having count(*) >1;
 create table order_items_clean as
 select DISTINCT order_id, product_id, quantity from order_items;
 select count(*) from order_items_clean;
 /* checking negative values */ SELECT * from order_items_clean where quantity <=0;
 
 
 
