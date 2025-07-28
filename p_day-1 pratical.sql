show databases;
use student_info;

show tables;
-----✅Step1:CreatetheTable
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price INT,
    created_at DATE
);
----InsertSampleData
INSERT INTO products (id, name, category, price, created_at) VALUES
(1, 'Pro Mouse', 'Accessories', 500, '2024-01-01'),
(2, 'Gaming Mouse', 'Accessories', 700, '2023-11-20'),
(3, 'Pro Keyboard', 'Accessories', 1000, '2024-02-05'),
(4, 'Laptop Pro', 'Laptop', 50000, '2024-03-01'),
(5, 'Laptop Basic', 'Laptop', 30000, '2023-12-15');


select * from products

select
name, price from products
select name from products

select name, price
from products 
where price >= 500

select name
from products
where name like '%pro%'

select * from products

select name, created_at
from products
where created_at between '2024-01-01' and '2024-12-30'

select * 
from products

select DISTINCT (category) 
from products

select name, price 
from products
where price between 300  and 1000;

select *
from products

select category
from products
where category = 'laptop';

select name 
from products
where name like 'laptop%';

select name
from products 
order by name asc;

