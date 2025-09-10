Set Operators (UNION, INTERSECT, EXCEPT).
use bank_db1

select customer_name from customers
UNION 
Select customer_name from accounts

💡 Solution:
To UNION, both SELECT queries must return the same number of columns with compatible data types.

SELECT c.customer_name
FROM customers c
UNION
SELECT c.customer_name
FROM accounts a
JOIN customers c 
    ON a.customer_id = c.customer_id;

SELECT c.customer_name FROM customers
UNION
SELECT c.customer_name FROM accounts a 
JOIN customers c ON a.customer_id = c.customer_id;

select c.customer_name from customers
union 
select c.customer_name from customers c join  accounts a 
on a.customer_id = c.customer_id;

SELECT customer_name, city FROM customers WHERE city = 'Delhi'
UNION
SELECT customer_name, city FROM customers WHERE balance > 50000;


SELECT c.customer_name, c.city
FROM customers c WHERE c.city = 'Delhi'
UNION
SELECT c.customer_name, c.city
FROM customers c JOIN accounts a 
ON c.customer_id = a.customer_id
WHERE a.balance > 50000;

SELECT c.customer_name, c.city
FROM customers c
JOIN accounts a 
  ON c.customer_id = a.customer_id
WHERE c.city = 'Delhi' 
  AND a.balance > 50000;

