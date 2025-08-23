use employee_data
select * from bank_transactions

select cusotmer_name, amount
from bank_transactions
where amount >= 100000;

SELECT AVG(amount) FROM bank_transactions;

select * from bank_transactions
where amount >(SELECT AVG(amount) FROM bank_transactions)

Find customers whose total transactions are greater than the average transaction amount of all customers.

select sum(amount) as total_avg
from bank_transactions;
44172495.03

Step 1 → For each customer, calculate the total amount of all their transactions (SUM(amount)).

select customer_name, 
sum(amount) as percusotmerwise_totalTransaction_amount
from bank_transactions
group by customer_name;

------
Step 2 → Calculate the average transaction amount across all customers (based on totals, not individual transactions).

select avg(amount)
from bank_transactions;
------
Step 3 → Compare each customer’s total with that overall average.

------
Step 4 → Return those customers whose total > average of all customers.
------
select cusotmer_name, sum(amount) as total_amount_allcustomers, avg(amount) as averageamount_of_all_customers
from bank_transactions
group by customer_name
having sum(amount) > avg(amount)
order by total_amount DESC;



SELECT customer_name, 
       SUM(amount) AS total_amount
FROM bank_transactions
GROUP BY customer_name
HAVING SUM(amount) > (
    SELECT AVG(total_amount) 
    FROM (
        SELECT customer_name, SUM(amount) AS total_amount
        FROM bank_transactions
        GROUP BY customer_name
    ) AS customer_totals
)
ORDER BY total_amount DESC;



