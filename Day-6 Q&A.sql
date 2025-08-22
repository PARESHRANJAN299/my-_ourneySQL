1.Top Customers by Deposit Amount
Find customers who have deposited more than ₹50,000 in total.

select * from bank_transactions


select customer_name, sum(amount) as Total_Deposit
from bank_transactions
Where transaction_type = 'Deposit'
group by customer_name
having sum(aomunt) > 50000
order by Total_Deposit;

2.Branch with Minimum Transactions
Show branches that processed less than 5 transactions in total.

select branch_name, count(*) as transactions_count
from bank_transactions
group by branch_name 
having count(*) <5
order by transactions_count ASC;

SELECT branch_name,
       COUNT(*) AS transactions_count
FROM bank_transactions
GROUP BY branch_name
HAVING COUNT(*) < 5
ORDER BY transactions_count ASC;


3.Customers Using Multiple Transaction Types
Find customers who performed more than 1 unique transaction type (e.g., deposit + withdrawal).
select * from bank_transactions

select customer_name, count(*) as total_count
from bank_transactions
where transaction_type = 'deposit' AND 'withdrawal'
group by customer_name
having count(*) >2
ORDER BY total_count;



4.High Value Transaction Branches
List branches where the average transaction amount is greater than ₹10,000.

select branch_name, 
avg(amount) as total_avg_Aomunt
from bank_transactions
group by branch_name
having (total_avg_Aomunt) > 10000
Order by total_avg_Aomunt DESC;

5.Inactive Customers
Find customers whose total withdrawal amount = 0.

select customer_name, transaction_type, amount
from bank_trancastions
where transaction_type = 'withdrawal'
group by customer_name
having (amount) > 0;





use employee_data
show databases;

select * from bank_transactions

✅ 20 SQL Interview Practice Questions (GROUP BY & HAVING)
________________________________________
🟢 Easy Level (Concept Builders)
1.	Count the number of transactions per customer.
2.	Find total deposit amount per branch.
3.	Show average transaction amount per customer.
4.	Find maximum withdrawal per branch.
5.	List customers who made more than 3 transactions.

🟡 Medium Level (Logic Shapers)
6.	Find branches where the average transaction amount is greater than ₹10,000.

select branch_name, avg(amount) as total_avg_transactions
from bank_Transactions
group by branch_name
having avg(amount) > 10000
order by total_avg_transactions DESC;

7.Show customers whose total withdrawal amount is greater than ₹50,000.
select customer_name, sum(amount) as total_amount_withdrawal
from bank_transactions
where transaction_type = 'withdrawal'
group by customer_name
having sum(amount) > 50000
Order By total_amount_withdrawal DESC;


8.	Find the number of unique transaction types each customer performed.
select customer_name, count(distinct transaction_type) as unique_customer_transaction
from bank_transactions
group by customer_name;


9.	List customers who deposited money in at least 2 different branches.
9
select customer_name, count(distinct branch_name) as total_branch_count
from bank_transactions
where transaction_type = 'deposit'
group by customer_name
having count(distinct branch_name) >= 2 
ORDER by total_branch_count DESC;

10.	👉 Find customers who performed transactions (any type) in at least 3 different branches.

select customer_name, count(distinct branch_name) as total_branch_count
from bank_transactions
group by customer_name
having count(distinct branch_name) >=3
Order by total_branch_count desc ;

11.	👉 List customers who deposited money in at least 2 different branches.

select customer_name, count(distinct branch_name) as total_branch_count
from bank_transactions
where transaction_type = 'deposit'
group by customer_name
having count(distinct branch_name) >=2
Order by total_branch_count desc ;

12.	👉 Find branches that served at least 5 different customers.
select Branch_name, count(distinct customer_name) as total_diffrent_customers
from bank_transactions
group by branch_name
having count(distinct customer_name) >=5
Order by total_diffrent_customers DESC;

13.	👉 List customers who used at least 2 different transaction types (deposit + withdrawal).

select customer_name, count(distinct transaction_type) as total_uniqueTransactions
from bank_transactions
where transaction_type in ('deposit',  'withdrawal')
group by customer_name
having count(distinct transaction_type) >= 2
Order by total_uniqueTransactions DESC;

14.	List customers who deposited more than ₹1,00,000 across at least 2 different branches.
select customer_name, count(distinct Branch_name) as different_branches, sum(amount)
from bank_transactions 
where transaction_type = 'deposit'
group by customer_name
having count(distinct Branch_name) >= 2
and sum(amount) > 100000;

15.	Show top 3 branches with the highest total deposits.

select branch_name, sum(amount) as total_amount
from bank_transactions
where transaction_type= 'deposit'
group by branch_name
Order by total_amount DESC LIMIT 3;

 












