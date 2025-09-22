SELECT * FROM bank_db1.accounts;

select
account_id, 
account_type, 
balance,
CASE 
WHEN balance > 1000000 THEN 'higher rich'
WHEN balance between 50000 and 1000000 THEN 'medium'
else 'Small'
END as category_balance
from 
accounts