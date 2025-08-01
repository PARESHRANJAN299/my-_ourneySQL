use student_info

select * from products

SELECT name AS product_name FROM products

SELECT * FROM products LIMIT 5 offset 2,

select name from products
where not category = 'laptop'

select * from products
WHERE price <> 1000 OR category  <> 'Laptop'

✅ Q1. Rename the column name as product_name.

select name as products_name, category, price, created_at from products;
select name as prodcuts_name from products;
select name as products_name, * from products 

✅ Q2. Show only the first 2 cheapest products.

select name, price
from products
order by price ASC limit 2; 

✅ Q3. Skip the first 2 most expensive products and show the next 2.

select * from products
order by price DESC limit 2 offset 2;

✅ Q4. Show all products except those in the 'Laptop' category.

select * from products
where category <> 'laptop'

SELECT * FROM products
WHERE NOT category = 'Laptop';

✅ Q5. Show products where price is not 1000.

 select * from products where price is not 1000;
select * from products
where price <> 1000;

✅ Q6. Show products where category is 'Laptop' and price > 40000.

select * from products
where category = 'Laptop' and price > 40000;

✅ Q7. Show products that are either laptops or cost less than 600.

select * from products
where category = 'laptop' or price < 600;


✅ Q8. Show products where price is NULL. (Assume there could be NULL values)

select * from products
where price is  null

✅ Q9. Show products where price is NOT NULL.

select * from products
where price is not null;

✅Q10.Show all products that are not in the "Accessories" category.

select * from products
where category <> 'accessories'

✅ Q11. Show products with a renamed column: cost instead of price.

select name as cost, category, price, created_at from products


✅ Q12. List products where category is not 'Accessories'.
select * from products
where category <> 'accessories'

✅ Q13. Show the 3 most expensive products only.

select name, price from products
order by price DESC limit 3;

✅ Q14. Show products created in 2024 and price > 1000.
select * from products
where created_at between '2024-01-01' and 2024-12-30 and price >=1000

✅ Q15. Show product names and prices, but skip the top 1 and show next 3.
select name, price from products
order by price desc limit 3  offset 1;