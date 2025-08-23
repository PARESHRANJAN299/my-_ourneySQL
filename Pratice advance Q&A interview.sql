🔹20 SQL GROUP BY + HAVING Practice Questions

Show branches where more than 10 unique customers transacted.
select branch_name, count(distinct customer_name) as unique_customer_transacted
from bank_transactions
group by branch_name
having count(distinct customer_name) >= 10
order by unique_customer_transacted DESC;

List customers who made more than 5 transactions.
select customer_name, count(*) as total_transactions_by_cus
from bank_transactions
group by customer_name
having count(*) >= 5
order by total_transactions_by_cus DESC;

Find customers whose total deposits exceed ₹1,00,000.

select customer_name, sum(amount) as total_deposit
from bank_transactions
where transaction_type = 'deposit'
group by customer_name
having sum(amount) > 100000
order by total_deposit DESC;

select * from bank_transactions
Show branches where the average transaction amount is greater than ₹10,000.

List customers who used at least 2 different transaction types.
select customer_name, count(distinct transaction_type) as uniqueTransaction_type
from bank_transactions
group by customer_name
having count(distinct transaction_type) >= 2
Order by uniqueTransaction_type DESC;

Find customers whose minimum transaction amount is greater than ₹5,000.
select customer_name, min(amount) as minimum_transaction, sum(amount) as total_amount
from bank_transactions
group by customer_name
having min(amount) > 5000
order by total_amount DESC;

“Find customers whose maximum transaction amount is less than ₹5,000” (same logic, just with MAX)?
select customer_name, min(amount) as minimum_transaction, sum(amount) as total_amount
from bank_transactions
group by customer_name
having min(amount) < 5000
order by total_amount DESC;
Show customers whose maximum transaction exceeds ₹50,000.
select Customer_name, max(amount) as maximum_transaction
from bank_transactions
group by customer_name
having max(amount) >=50000
Order by maximum_transaction DESC;

Find branches with more than 20 total transactions.
select branch_name, count(*) as total_transactions
from bank_transactions
group by branch_name
having count(*) >= 20

List customers who deposited in at least 2 different branches.
select customer_name, count(distinct branch_name) as unique_branch_name
from bank_transactions
group by customer_name
having count(distinct branch_name) >=2
order by unique_branch_name DESC;

Show customers who performed only deposits (no withdrawals).
select customer_name, transaction_type as deposit_amount
from bank_transactions
where transaction_type = 'deposit'
group by customer_name;

Find customers whose total withdrawals are greater than their total deposits.
select customer_name, sum(amount) as total_amount
from bank_transactions 
where transaction_type = 'withdrawal'
group by customer_name
having sum(amount) >

select * from bank_transactions

Show branches where deposits are at least double the withdrawals.

Find customers who have both deposits and withdrawals.

select customer_name, count (distinct transaction_type) as unique_transactions
from bank_transactions
where transaction_type in ('deposit', 'withdrawal')
group by customer_name
having count (distinct transaction_type) = 2;

SELECT customer_name,
       COUNT(DISTINCT transaction_type) AS unique_transaction_types
FROM bank_transactions
WHERE transaction_type IN ('deposit', 'withdrawal')
GROUP BY customer_name
HAVING COUNT(DISTINCT transaction_type) = 2
ORDER BY customer_name;


Show branches where the total transaction amount exceeds ₹10,00,000.
select branch_name, sum(amount) as total_amount
from bank_transactions
group by branch_name 
having  sum(amount) > 1000000
order by total_amount DESC;
Find customers who performed transactions in at least 3 different branches.

Show branches with fewer than 5 unique customers.
Find customers whose total transaction count is greater than the average count of all customers.
Show customers who never deposited money.
select customer_name, transaction_type, amount
from bank_transactions
group by customer_name
having 

Show branches where withdrawals are greater than ₹2,00,000 in total.
Show branches where the highest transaction is greater than ₹1,00,000.