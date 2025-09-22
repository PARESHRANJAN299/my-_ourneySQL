SELECT * FROM bank_db1.accounts;

select
account_id, 
account_type, 
balance,
CASE 
WHEN balance > 1000000 THEN 'higher rich'
WHEN balance between 500000 and 100000 THEN 'medium'
else 'Small'
END as category_balance
from 
accounts

1. Categorize Balance as High/Medium/Low
select *,
CASE 
WHEN balance > 100000  THEN 'HIGH'
WHEN balance between 50000 AND 100000 THEN 'Medium'
ELSE 'Low'
END as Categorize_Balance
from accounts;
2. Rename Account Types into Short Codes
select * , 
CASE account_type
WHEN 'Savings' THEN 'SAV'
WHEN 'CURRENT' THEN 'CUR'
WHEN 'Fixed Deposit' THEN 'FD'
ELSE 'OTHER'
END RenameACC
FROM ACCOUNTS;

3. Check if Customer Has More Than 1 Account

select * , 
case
when customer_id > 1 then 