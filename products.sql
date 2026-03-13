create table products(
product_id INT,
category varchar(50),
price decimal (10,2));
use new_schema;
show variables like 'secure_file_priv';
load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/products_big.csv"
 into table products
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;
select count(*) from products;
/* Null Value check */ select * from products where product_id is null 
or category is null or price is null;
/* Duplicate */ select product_id, count(*) from products group by product_id having count(*) >1;
SELECT * from products where price <=0;