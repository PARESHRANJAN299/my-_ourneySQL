select * from products

✅ 🔍 Section 1: SELECT, WHERE, ORDER BY Basics

1.	Write a query to get all products sorted by price (low to high).
select * from products 
order by price asc;

2.	Get the first 3 products alphabetically by name.
select * from products 
order by name asc limit 3;

3.	List product name and price for products with price over ₹1000.
select id, name, price from products
where price >= 1000;
4.	Show all products in the ‘Accessories’ category, sorted by name descending.

select * from products 
where category = 'Accessories' 
order by name desc;

5.	Display all products created in 2024, ordered by created_at.

select name, created_at from products
where created_at between '2024-01-01' and '2024-12-30'
order by created_at asc;

✅ 🔍 Section 2: NOT, !=, <>

6.	Write a query to get products where category is not 'Laptop'.

select * from products
where category <> 'laptop';

7.	Show products with price not equal to ₹500.

select name, price from products
where price <> 500;
8.	Find products not in categories 'Laptop' and 'Accessories'.

select name, category from products
where category <> 'Laptop' and 'Accessories'

9.	Get all products where name does not contain the word "Pro".

select id, name from products
where name not like '%pro%'

10.	Display products that are not created in 2024.

select name, created_at from products
where not created_at between '2024-01-01' and '2024-12-30'

✅ 🔍 Section 3: BETWEEN
11.	Show products priced between ₹500 and ₹1500.

select name, price from products
where price between 1000 and 5000;

12.	Get all products not priced between ₹1000 and ₹5000.

select name, price from products
where not price between 1000 and 5000;

13.	Show products with prices from ₹200 to ₹800, sorted descending.

select name, price from products 
where price between 200 and 800
order by price desc;

14.	Is BETWEEN inclusive? Try with a product priced exactly at ₹1000.
Yes, 
SELECT * FROM products
WHERE price BETWEEN 1000 AND 1000;

15.	Use NOT with BETWEEN to exclude mid-range prices. 
🧪 Example Output (if prices are: 150 - output, 300, 800, 1000- output):

select * from products
order by price desc limit 1;
select * from products
order by price asc limit 1;

select * from products
where not price between 700 and 30000;

✅ 🔍 Section 4: LIKE

16.	Show all products with names that start with 'Lap'.
select name from products
where name like 'lap%'
17.	Find products whose names end with 'Mouse'.
select name from products
where name like '%mouse'
18.	List product names that contain the word “Pro”.
select name from products
where name like '%pro%'
19.	Show products where name is not like '%Basic%'.

select name from products
where name not like '%Basic%'

20.	Find names where the second letter is 'a'. (Hint: use _)

select name from products
where name like '_a%'

✅ 🔍 Section 5: IN and NOT IN
21.	Show all products in categories Laptop, Accessories, and Mobile.

select name, category from products
where category between 'Accessories' and 'Laptop';

22.	Show all products not in these categories.
select name, category from products
where not category between 'Accessories' and 'Laptop';

23.	Find products with price IN (500, 1000, 1500).

select name, price from products
where price in (500, 1000, 1500);

24.	Show products where name IN ('Pro Mouse', 'Laptop Pro').

select name from products
where name IN ('Pro Mouse', 'Laptop Pro')
25.	Find all products not in a list of given IDs.

SELECT * FROM products
WHERE id NOT IN (1, 3, 5, 7);

✅ 🔍 Section 6: IS NULL / IS NOT NULL

26.	Get orders where created_at is NULL.

select * from products 
where created_at is null;

27.	Show all records where created_at is NOT NULL.
select * from products 
where created_at is not null;
28.	What’s the result of = NULL vs IS NULL?

29.	Try selecting records where category IS NULL.
select * from products 
where category is null
30.	Find products with missing price values.
select * from products 
where name is null

✅ 🔍 Section 7: DISTINCT

31.	Show all distinct categories from the products table.
select distinct(category) from products;
32.	Show distinct combinations of category and price.
select distinct(category and price) from products;

SELECT DISTINCT category, price FROM products;

33.	What happens when you use SELECT DISTINCT with multiple columns?
SELECT DISTINCT name, category FROM products;

34.	Get all unique product names containing 'Pro'.

select DISTINCT name from products
where name like '%pro%';
35.	Use DISTINCT to remove duplicate price values.

select DISTINCT (price) from products;

✅ 🔍 Section 8: AND, OR, LIMIT, OFFSET, AS
36.	Show products where category = 'Laptop' AND price > 40000.
select name, category, price from products
where category = 'Laptop' AND price > 40000
37.	Show products where category = 'Laptop' OR price < 600.
select name, category, price from products where category = 'Laptop' OR price < 600

38.	Get the 2th to 4th products sorted by price.
select * from products

select * from products
order by price limit 4 offset 1

39.	Get the 3 most expensive products.

select name, price from products
order by price desc limit 3
40.	Show product name as product_title and price as product_cost.
select name as product_title, price as product_cost from products;



