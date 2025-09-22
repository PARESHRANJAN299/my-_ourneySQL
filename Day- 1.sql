show databases;
use bank_db1
show tables

select * from accounts

select account_type, sum(balance) as total_balance
from accounts
group by account_type
order by total_balance DESC LIMIT 3 ; 

with a as
(
select account_type, sum(balance) as total_balance
from accounts
group by account_type
)
select * from a
order by total_balance DESC limit  3;