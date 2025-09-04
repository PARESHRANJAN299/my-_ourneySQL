I’ll design 10 practice questions for you, but restricted only to the topics you said you’ve learned so far:

✅ INNER JOIN
✅ GROUP BY
✅ HAVING
✅ OFFSET
✅ DISTINCT
✅ WHERE
✅ Aggregations (COUNT, SUM, AVG, MIN, MAX)
🟢 10 SQL Practice Questions
Show all customer names and their account types using an INNER JOIN.

select c.customer_name, a.account_type
from customers c INNER JOIN accounts a
on c.customer_id = a.customer_id;
show databases;
use bank_db1;
Show distinct cities where customers have accounts.

select * from customers
unique 
select * from Accounts

select distinct c.city
from customers c INNER JOIN accounts a
on c.customer_id = a.customer_id;



Show customer names and balances for accounts with balance greater than 50,000.
select c.customer_name, a.balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id
where a.balance >= 50000;

Show customer names with their account type and balance, ordered by balance (highest first) and skip the first 2 results (use OFFSET).

select c.customer_name, a.account_type, a.balance
from customers c INNER JOIN accounts a
on c.customer_id = a.customer_id
ORDER BY a.balance DESC limit 999999
OFFSET 2;

Find the average account balance per city.

select c.city, avg (a.balance) as avg_balance
from customers c inner join accounts a
on c.customer_id = a.customer_id
group by c.city 
order by avg(a.balance) desc;


Show the total balance of all accounts for each customer.
select c.customer_name, sum(a.balance) as total_amount
from customers c Inner join accounts a 
on c.customer_id = a.customer_id
group by c.customer_name

	Find customers who have more than one account.
select c.customer_name, count(a.account_type)as total_count
from customers c inner join accounts a 
on c.customer_id = a.customer_id
group by c.customer_name
having count(a.account_type) >= 2

Show the maximum balance held by each account type.
select a.account_type, max(a.balance) as maximum_balance
from customers c inner Join  accounts a 
on c.customer_id = a.customer_id
group by a.account_type
Order by max(a.balance) desc ;

Show customers who have a Savings account and their balances.
select c.customer_name, a.account_type, a.balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id
where a.account_type = 'savings'

Find customers whose total balance across accounts is greater than 100,000.

select c.customer_name, sum(a.balance) as total_balance
from customers c inner join accounts a 
on c.customer_id = a.customer_id
group by c.customer_name
having sum(a.balance) >= 100000
Order by sum(a.balance)DESC