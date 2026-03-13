create table orders(
order_id INT,
customer_id INT,
order_date date,
payment_method varchar(15));
use new_schema;
show variables like 'secure_file_priv';
load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders_big.csv"
 into table orders
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;
select count(*) from orders;
/* Null Value check */ select * from orders where order_id is null or customer_id is null or
 order_date is null or payment_method is null;
/* Duplicate */
 select order_id, count(*) from orders group by order_id having count(*) >1;
 show PROCESSLIST;
 kill 61;
 create table orders_clean as
 select DISTINCT * from orders;
 select count(*) from orders_clean;
 /* Duplicate */
 select order_id, count(*) from orders_clean group by order_id having count(*) >1;
 SELECT * from orders_clean 
where order_id is null
or customer_id is null
or order_date is null
or payment_method is null;
