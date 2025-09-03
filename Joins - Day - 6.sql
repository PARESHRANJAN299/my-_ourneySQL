show databases
drop database employee_data;
--customer
create database bank_db1
use bank_db1
CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    phone VARCHAR(15)
);
INSERT INTO Customers (customer_id, customer_name, city, phone) VALUES
(1, 'Ravi Kumar', 'Delhi', '9876543210'),
(2, 'Anita Sharma', 'Mumbai', '9823456789'),
(3, 'Amit Verma', 'Bangalore', '9811122233'),
(4, 'Priya Singh', 'Hyderabad', '9809988776'),
(5, 'Rahul Mehta', 'Pune', '9798765432');

--2-Accounts

CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(12,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Accounts (account_id, customer_id, account_type, balance) VALUES
(101, 1, 'Savings', 50000.75),
(102, 1, 'Current', 120000.00),
(103, 2, 'Savings', 75000.50),
(104, 3, 'Savings', 15000.25),
(105, 4, 'Fixed Deposit', 200000.00);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATE,
    amount DECIMAL(12,2),
    transaction_type VARCHAR(10),
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);
INSERT INTO Transactions (transaction_id, account_id, transaction_date, amount, transaction_type) VALUES
(1001, 101, '2025-08-01', 2000.00, 'Debit'),
(1002, 101, '2025-08-05', 5000.00, 'Credit'),
(1003, 102, '2025-08-03', 10000.00, 'Debit'),
(1004, 103, '2025-08-04', 7500.00, 'Debit'),
(1005, 104, '2025-08-06', 2000.00, 'Credit');

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_type VARCHAR(20),
    loan_amount DECIMAL(12,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Loans (loan_id, customer_id, loan_type, loan_amount) VALUES
(201, 1, 'Home Loan', 1500000.00),
(202, 3, 'Car Loan', 500000.00),
(203, 5, 'Personal Loan', 300000.00);


use bank_db1
show tables
select * from customers

select customer_id , Customer_name, city
from customers;
select account_id , customer_id, account_type, balance
from accounts;

SELECT c.customer_name, a.account_type, a.balance
FROM Customers c
INNER JOIN Accounts a
  ON c.customer_id = a.customer_id;

