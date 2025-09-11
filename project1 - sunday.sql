🛒 + 🏦 Unified Dataset: E-Commerce with Banking Integration

1. Bank_Customers
Stores all customer master details (shared between banking and e-commerce).
create database DB2
use db2
CREATE TABLE Bank_Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    City VARCHAR(50),
    Country VARCHAR(50),
    JoinDate DATE
);

2. Accounts
Each customer has one or more accounts.

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),   -- Savings, Credit, Wallet
    Balance DECIMAL(15,2),
    Branch VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Bank_Customers(CustomerID)
);
3. Transactions
All debit/credit activity.

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    TransactionType VARCHAR(20),  -- Deposit, Withdrawal, Payment
    Amount DECIMAL(12,2),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

4. Products (E-commerce)
Products customers can purchase.

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

5. Orders (E-commerce)
When a customer places an order, money flows from their bank account.

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    AccountID INT,         -- Bank account used to pay
    OrderDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10,2),
    Status VARCHAR(20),    -- Completed, Pending, Failed
    FOREIGN KEY (CustomerID) REFERENCES Bank_Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

🔗 Relationships (Cross-System)
Bank_Customers (1) → Accounts (M)
Accounts (1) → Transactions (M)
Bank_Customers (1) → Orders (M)
Products (1) → Orders (M)
Orders → Accounts (so payments are tied to banking)

