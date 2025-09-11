🔹 INTERSECT (common records between queries)

Show customer IDs that are present in both customers and accounts.

SELECT customer_id 
FROM customers
INTERSECT
SELECT customer_id 
FROM accounts;

SELECT customer_id 
FROM customers
Union 
SELECT customer_id 
FROM accounts;

Show cities that have both customers and accounts (match on city column).

Show customer IDs of customers living in Delhi who also have an account.

Show customer IDs of those who have both Savings and Current accounts.

Show account balances that match exactly with some customer_id values (weird but good practice for datatype matching).

👉 Simple analogy:

UNION = “Take everything from both boxes.”

INTERSECT = “Take only the items that are in both boxes.”