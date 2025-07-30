1️ Get all products ordered by price:

show databases

use student_info

select * from products

select * from products order by price asc;

2️ Get all products ordered by name (alphabetically A-Z):

select * from products order by name asc;
select * from products order by name;

3️ Show only Accessories products, ordered by price (high to low)

select * from products 
where category = 'accessories' 
order by price desc;

4️ List products created in 2024, sorted by created_at (latest first):

select name, created_at from products 
where created_at between '2024-01-01' and '2024-12-30'
order by created_at ASC;

5️ Show only products with “Pro” in the name, sorted alphabetically:

pro - mandetary 

select id, name from products
where name like '%pro%'
order by name ASC;

6️ Show only distinct categories, ordered alphabetically:

select distinct(category) from products order by category asc;


7️ Show all products with price greater than 1000, ordered by price:

select * from products
where price >= 1000
order by price asc;

8️ Show products between ₹1,000 and ₹30,000, ordered by price (high to low):

select * from products 
where price between 1000 and 30000
order by price asc;


9️ Show the 3 cheapest products:

select name, price from products
order by price asc limit 3;

🔟 Show the 2 most expensive products with “Laptop” in the name:

select * from products

select name, category, price from products
where category = 'laptop' 
order by price desc;



