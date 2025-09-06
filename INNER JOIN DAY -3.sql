Master practice set — 30 questions using INNER JOIN combined with:

Aggregation (SUM, AVG, MIN, MAX, COUNT)
GROUP BY
HAVING
WHERE
DISTINCT
OFFSET + LIMIT
Operators (=, <, >, BETWEEN, IN, LIKE)

I’ll give you 30 questions step by step, categorized for learning flow 👇

select * from customers;
select * from accounts;
🔹 Basic INNER JOIN

Show all customers with their account IDs and balances.

select a.account_id, c.customer_name, a.balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id;

Show customer names with their account types.
select c.customer_name, a.account_type
from customers c inner join accounts a 
on c.customer_id = a.customer_id

Show city, account_id, and balance of all customers with accounts.
use bank_db1
select a.account_id , c.customer_name, c.city, a.balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id

Show customers who have a Savings account and their balances.
select c.customer_name, a.account_type, a.balance
from CUSTOMERS c INNER JOIN ACCOUNTS a
on c.customer_id = a.customer_id
where a.account_type = 'Savings'

Show customer names with their account type sorted by balance (highest first).
select c.customer_name, a.account_type, a.balance
from customers c  Inner join accounts a 
on c.customer_id = a.customer_id
ORDER BY a.balance DESC;

🔹 INNER JOIN + WHERE (filters)
Show customers with balances greater than 50,000.
select c.customer_name, a.balance
from customers c INNER JOIN  accounts a 
on c.customer_id = a.customer_id
where a.balance >= '50000'

Show customers from Delhi and their account balances.
select c.customer_name , c.city, a.balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id
where c.city = 'delhi'

Show customers whose names start with 'A' and their account details.
select c.customer_name, a.account_type
from customers c inner join accounts a 
on c.customer_id = a.customer_id
where customer_name like 'A%'
Show customers whose account type is either ‘Savings’ or ‘FD’.
select c.customer_name, a.account_type
from customers c inner join accounts a
on c.customer_id = a.customer_id
Where a.account_type in ('Savings', 'FD');

Show customers with balances between 50,000 and 100,000.
select c.customer_name, a.balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id
where a.balance between '50000' and '100000'
use bank_db1

🔹 INNER JOIN + DISTINCT

Show distinct cities where customers have accounts.

select distinct(c.city)
from customers c inner join accounts a 
on c.customer_id = a.customer_id

Show unique customer names who hold a Savings account.
select c.customer_name, a.account_type
from customers c inner join accounts a
on c.customer_id = a.customer_id
where a.account_type = 'Savings'

Show distinct account types each customer holds.

select distinct c.customer_name, a.account_type
from customers c Inner join accounts a 
on c.customer_id = a.customer_id

Show unique customer_id + city combinations.

select Distinct c.customer_id, c.city
from customers c inner join accounts a 
on c.customer_id = a.customer_id

Show distinct customers who have a balance greater than 1,00,000.
select distinct (c.customer_name), a.balance 
from customers c inner join accounts a
on c.customer_id = a.customer_id
where a.balance >=100000

Show the total balance of all accounts for each customer.

select c.customer_name, sum(a.balance) as total_amount
from customers c inner join accounts a 
on c.customer_id = a.customer_id
group by c.customer_name ;

select a.account_type, sum(a.balance) as total_amount
from customers c inner join accounts a 
on c.customer_id = a.customer_id
group by a.account_type;

Show the average balance per city.

select c.city , avg (a.balance) as total_avg_balance
from customers c inner join  accounts a 
group by c.city;

Show the maximum balance held by each account type.
select account_type, max(balance) as Maximum_balance
from accounts
group by account_type;

Show the minimum balance for each customer.

select c.customer_name, MIN(a.balance) as MIn_balance
from customers c inner join accounts a 
group by c.customer_name;

Show how many accounts each customer has.
select c.customer_name, count(a.account_type) as total_count
from customers c inner join accounts a 
on c.customer_id = a.customer_id
group by customer_name;

Find customers who have more than one account.

select c.customer_name, count(a.account_type) as total_count
from customers c inner join accounts a 
on c.customer_id = a.customer_id
group by customer_name
having count(a.account_type) >= 2

Find cities where the average balance is greater than 50,000.
select c.city, avg(a.balance) as total_avg
from customers c inner join accounts a
on c.customer_id = a.customer_id
group by c.city
having avg(a.balance) >= 50000

Find account types where the maximum balance exceeds 1,00,000.
select a.account_type, max(a.balance) as total_balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id
group by a.account_type 
having max(a.balance) >= 100000;

Find customers whose total balance exceeds 2,00,000.
select c.customer_name, max(a.balance) as total_balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id
group by c.customer_name 
having max(a.balance) >= 200000;
Find cities having at least 3 customers with accounts.

select c.city, count(c.customer_name) _total_customer
from customers c inner join accounts a 
on c.customer_id  = a.customer_id
group by city
having count(c.customer_name) >= 2;

Show the top 5 customers by balance.
use bank_db1

select c.customer_name, sum(a.balance) as total_balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id 
group by c.customer_name
order by sum(a.balance)DESC limit 3;

Show balances ordered from highest to lowest, but skip the first 2 rows.

select c.customer_name, sum(a.balance) as total_balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id 
group by c.customer_name
order by sum(a.balance)DESC limit 4 offset 2;

Show the 3rd highest balance (using LIMIT 1 OFFSET 2).

select c.customer_name, sum(a.balance) as total_balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id 
group by c.customer_name
order by sum(a.balance)DESC limit 1 offset 2;

Show the top 3 customers by total balance per city.

select c.city, c.customer_name, sum(a.balance) as total_balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id 
group by c.city, c.customer_name
order by c.city, total_balance DESC 
limit 3;

Show customers sorted by balance but display only rows 6 to 10.

select c.customer_name, a.balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id
order by a.balance DESC limit 5 offset 5;