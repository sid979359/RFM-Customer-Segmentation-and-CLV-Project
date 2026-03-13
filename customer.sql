use new_schema;
truncate table customers;
show variables like 'secure_file_priv';
load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customers_big.csv"
 into table customers
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;
select count(*) from customers;
/* Null Value check */ select * from customers where customer_id is null or customer_city is null or region is null;
/* Duplicate */ select customer_id, count(*) from customers group by customer_id having count(*) >1;
 