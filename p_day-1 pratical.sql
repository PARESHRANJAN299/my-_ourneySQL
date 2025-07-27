show databases
use student_info;
show tables 

select * from student_id_cards
select * from students;

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

------------------------Queries
check how many database and tables available in our production
show databases
show tables

--in my case i have one database. if in your case there are multiple databases are there so you have to change the database name use below systax.
--use database_name
--Showall products
select * from products;
--2. Show name and price only
select price from products;
--3. Products priced above500

SELECT price FROM products
WHERE price >= 500;

select price
from products
where price  > 500;

-----While writing or debugging a SQL query, it's common to pause and check a table's structure — like its columns, data types, and constraints.
DESCRIBE products;
SHOW CREATE TABLE products;

--Products containing “Pro” in the name
select * from products
----
select name
from products
where name  like '%pro%';

select created_at
from products
where created_at between '2024-01-01' and '2024-12-01';
