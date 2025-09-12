use bank_db1

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    CustomerName VARCHAR(100),
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    OrderDate DATE,
    Quantity INT,
    Price DECIMAL(10,2),
    TotalAmount DECIMAL(10,2)

select 
orderid,
customerid,
CustomerName,
ProductName,
Price,
Category,
sum(price) over (partition by Category )as total_price_category from orders;
📝 Practice Questions
Q1. Show each order with the grand total price of all orders.
select 
ProductName, 
price,
sum(price) OVER(partition by ProductName) as total_price from orders
SELECT 
    ProductName, 
    Price,
    SUM(price) OVER() AS total_price
FROM orders;
select * from orders
Q2. Show each order with the total spent by each customer.
select
ProductName,
totalamount,
sum(totalamount)over(partition by CustomerName )as total_spent from orders;
select * from orders
Q3. Show each order with the total product price in each category.
select 
productname,
category,
totalamount, 
sum(totalamount) OVER(PARTITION BY CATEGORY) AS total_P_price
from orders;
Q4. Show each order with a row number for each customer’s orders, ordered by price (highest first).
SELECT 
    OrderID,
    CustomerName,
    ProductName,
    Price,
    ROW_NUMBER() OVER(
        PARTITION BY CustomerName
        ORDER BY Price DESC
    ) AS row_num
FROM Orders;


