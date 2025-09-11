🔹 10 Practice Questions (Set Operators: UNION, INTERSECT, EXCEPT)

Basic
Show all unique customer IDs from both customers and accounts.
select customer_id from customers union 
select customer_id from accounts
Show all customer IDs from both customers and accounts, including duplicates.
select customer_id from customers union all
select customer_id from accounts;
Show all customer names and all account types in a single list.

SELECT customer_name FROM customers
UNION ALL
SELECT account_type FROM accounts;

Show all cities from customers and all account types from accounts.
SELECT city FROM customers
UNION ALL
SELECT account_type FROM accounts;
Show all customer names and all cities in one combined list.
SELECT customer_name FROM customers
UNION ALL
SELECT city FROM customers;
Intermediate

Show all customer IDs who either live in Delhi or have an account balance greater than 50,000.
select c.customer_id from customers s where c.city = 'Delhi'
union 
SELECT c.customer_id
FROM customers c
JOIN accounts a 
  ON c.customer_id = a.customer_id
WHERE a.balance > 50000;

Show all account IDs and customer IDs in a single column.
select account_id from accounts
union all
select customer_id from customers
Show all balances from accounts and customer IDs together in one list.

Show all customer names and all account IDs in one combined result.

Show all customer IDs from customers and accounts, but keep duplicates.
select customer_ID from customers
union all
select account_id from accounts
Filtering & Conditions
Show all customer names from customers and all account types from accounts where account type is 'Savings'.

Show all customer IDs from customers living in 'Mumbai' or accounts with balance less than 10,000.
s
Show all cities from customers and all account types from accounts, excluding duplicates.

Show all customer IDs from customers and accounts where customer_id > 5.

Show all customer names starting with 'A' and all account IDs greater than 100.
use bank_db1
Advanced
Show all unique data by combining customer names, cities, and account types into one list.

select customer_name as data from customers
union
select city from customers
union
select account_type from accounts;

Show all customer IDs from customers and accounts, including duplicates, but sorted by ID.
select customer_id from customers 
union all
select customer_id from accounts
order by customer_id  ASC;

Show all balances (as string) and all customer names in one combined result.

select cast( balance as char ) as result from accounts
union 
select customer_name from customers
select cast( balance as char) as result from customer_
Show all customer IDs from customers living in 'Delhi' and account IDs from accounts with balance > 1,00,000.

select customer_id from customers where city = 'Delhi'
union 
select customer_id from accounts where balance > 100000

Show a single list of all customer names, account types, and cities combined.
SELECT CAST(balance AS CHAR) AS result
FROM accounts
UNION
SELECT customer_name AS result
FROM customers;
select cast(balance as char) as result from accounts
