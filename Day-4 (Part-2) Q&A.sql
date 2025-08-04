✅ NOT, LIKE, AND != Practice
1.	Get all products where name does not contain the word “Pro”.
show databases
use student_info
select * from products
where name not like ('%pro%');

2.	Show all products that don’t belong to the “Laptop” or “Tablet” category.

select name from products
select * from products 
where category <> 'laptop'
3.	Get all products where price is not equal to 1500.
select * from products
where price <> 1500
4.	Find products where category does not start with “A”.
select name, category from products
where category not like 'A%'

5.	List all products whose names do not end with “Mouse”.

select name, category from products
where name not like '%mouse'
________________________________________
✅ BETWEEN & NOT BETWEEN Practice
6.	Is BETWEEN inclusive? Test with a product priced exactly at ₹1000.

select * from products
where price between 1000 and 1000;

7.	Use NOT BETWEEN to exclude products priced from ₹5000 to ₹20000.
select * from products
where not price between 5000 and 20000;
8.	Show products where price is between 300 and 1200, and category is “Accessories”.

select name, category, price from products
where price between 300 and 1200 and category = 'Accessories'
9.	Get all products not priced between ₹1000 and ₹5000 and also not in the “Laptop” category.
select name, category, price from products
where price not between 1000 and 5000 and category <> 'laptop'


✅ IN, NOT IN Practice
10.	Find all products not in the list of IDs: (2, 4, 6).
select id, name from products
where id not in (2, 4, 6);
11.	Show products that belong to categories: “Laptop”, “Accessories”, or “Tablet”.

select * from products where category = 'Accessories' and 'Laptop';

12.	Find products where name is not in (“Pro Mouse”, “Laptop Pro”).

select * from products
where name not like '%Pro Mouse%' and name not like '%Laptop Pro%'
________________________________________
✅ DISTINCT & MULTIPLE COLUMNS Practice

13.	Show distinct category and price combinations.

select distinct category, price from products;

14.	What happens when you use SELECT DISTINCT category, name?

SELECT DISTINCT category, name from products;
15.	Show distinct created_at dates where price > 2000.

select distinct created_at from products
where price > 2000;
