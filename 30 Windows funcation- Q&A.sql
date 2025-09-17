Basic Questions (1–10)
use bank_db1
show tables
select * from orders
Show each order with a grand total of all orders using OVER().
select * , 
sum(totalamount) OVER() as total_product_price from orders,
Show each order with total spent by each customer.
select *, 
sum(totalamount) OVER( PARTITION BY CUSTOMERNAME) as total_spent from orders;
Show each order with total product sales per category.
2️⃣ If they ask for “total sales amount per category”
1️⃣ If they ask for “total product quantity per category”
select 
productname, 
Category,
totalamount,
sum(quantity) over(partition by category) as total_product_sales
from Orders;
select * from orders;
Show each order with row number per customer ordered by OrderDate ASC.
select *,
row_number() OVER(partition by customername order by orderdate ASC) as Row_numb from orders;
Show each order with row number per category ordered by Price DESC.
select productname,
category, 
price,
ROW_NUMBER() OVER(partition by category order by price DESC) as row_numb from orders;
select * from orders
Show each order with the cumulative sum of TotalAmount per customer ordered by OrderDate.
select *,
sum(totalamount) over(partition by customername order by orderdate ASC) as total_amount from orders;
Show each order with ROW_NUMBER() for all orders sorted by OrderID ASC.
select * , 
row_number() OVER(ORDER BY orderdate ASC) as Row_numb FROM ORDERS;
Show each order with ROW_NUMBER() partitioned by CustomerID and ordered by Quantity DESC.
select * , 
row_number() over(partition by customerid order by Quantity DESC) as row_numb  from orders;
Show each order with cumulative total for all orders using OVER() without PARTITION BY.
select *, 
sum(totalamount) over() as total_amount from orders;

SELECT *, 
       SUM(totalamount) OVER(
           ORDER BY OrderID ASC 
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS cumulative_total
FROM Orders;

📘 20 Fresh SQL Window Function Practice Questions
Show each order with the total number of orders per customer.
select * , 
count(productname) over (partition by customername) as total_ordersPer_customer from orders;

Show each order with the grand total amount of all orders.
select * , 
sum(totalamount) over() as Grandtotal from orders;
Show each order with the average order amount per category.
select *,
avg(totalamount) over(partition by category) as total_avarage from orders;
SELECT *, 
       AVG(TotalAmount) OVER(PARTITION BY Category) AS avg_order_amount_per_category
FROM Orders;

Show each order with the row number of each product within its category ordered by price DESC.
select * , 
Row_number() over(partition by category order by price DESC) as Row_numb from orders;

Show each order with the maximum price per customer highest price for that customer.
select * , 
max(price) over(Partition by customername ) as highst_price from orders;

Show each order with the minimum price across all orders.
select * , 
min(price) over( ) as Lowest from orders;
Show each order with the row number of orders per customer ordered by OrderDate ASC.
select * , 
row_number() over(partition by customername order by  OrderDate ASC) as row_num from orders;
Show each order with the sum of quantities per category.
select * , 
sum(quantity) over( partition by category) as total_quantity from orders;
Show each order with the average quantity across all orders.
select * ,  
AVG(quantity) over() as Avg_qulatity from orders;
Show each order with the row number of each order per category ordered by OrderDate DESC.
select * , 
RANK () over(partition by category order by Orderdate DESC) as row_numb from orders ;
select * , 
dense_rank () over(partition by category order by Orderdate DESC) as row_numb from orders ;
select * , 
row_number () over(partition by category order by Orderdate DESC) as row_numb from orders ;
Show each order with the total spent by each customer.
select * ,
sum(totalamount) over(partition by customername) as total_spentamount from orders;
Show each order with the count of products,  bought in each category.
select * , 
count(quantity) over(partition by category) as product_bought from orders; 
select * from orders
Show each order with the row number per customer ordered by TotalAmount DESC.
select * , 
row_number() over(partition by customername order by totalamount DESC) as Row_numb from orders;
Show each order with the grand total quantity of all products.
Select * ,
sum(quantity) over() as Grand_total_quatity from orders;
Show each order with the total amount of all orders in the same category.
select * , 
sum(totalamount) over(partition by category) as total_amount_percategor from orders;
Show each order with the row number assigned globally ordered by OrderID ASC.
select * , 
row_number()OVER(order by OrderID ASC) as row_numb from orders
Show each order with the row number within each category ordered by ProductName ASC.
select * , 
row_number() over(partition by category order by productname ASC) as row_numb from orders ; 
Show each order with the sum of prices for all, products bought by the same customer.
select * , 
sum(totalamount) over(partition by customername) as products_bought from orders;
Show each order with the average TotalAmount per customer.
select * , 
avg(totalamount) over(partition by customername) as avg_amountpercustomer from orders;
Show each order with the row number per category ordered by TotalAmount ASC.

select * , 
row_number() over(partition by category order by TotalAmount ASC) as row_num from orders;
Intermediate Questions (11–20)
Assign a unique rank per customer’s order based on TotalAmount using ROW_NUMBER().

use bank_db1
select * , 
Row_number() over(partition by customername order by totalamount) as row_numb from orders;
 
Show top 2 most expensive orders per customer using ROW_NUMBER().
SELECT * 
FROM (
SELECT * , 
ROW_NUMBER() OVER (PARTITION BY Customername ORDER BY TOTALAMOUNT desc)AS ROW_NUM FROM ORDERS) AS RANKED 
WHERE ROW_NUM <=2 ;

SELECT *, 
       ROW_NUMBER() OVER(PARTITION BY CustomerName ORDER BY TotalAmount DESC) AS row_num
FROM (SELECT * FROM Orders WHERE TotalAmount > 500) AS filtered;

Show first purchased product per customer using ROW_NUMBER().

select *
from (
select * , 
ROW_NUMBER() OVER(PARTITION BY CUSTOMERNAME ORDER BY ORDERDATE ASC) AS Row_num from orders) as ranked
where Row_num <= 1;

Show last purchased product per customer using ROW_NUMBER() + ORDER BY OrderDate DESC.
select * from(
select * , 
ROW_NUMBER () OVER(PARTITION BY CUSTOMERNAME ORDER BY ORDERDATE desc)AS ROW_NUB FROM ORDERS ) AS RANKED
WHERE ROW_NUB <= 1;

Show row number per category with tie-breaking by Price DESC, then OrderDate ASC.
select * , 
row_number()over(partition by category order by price DESC, OrderDate ASC) as Row_numb from orders; 


Show the rank of each order per customer based on Price using ROW_NUMBER().

select * ,
row_number() over(partition by customername order by price) as row_numb from orders;

Show the row number per product (if the same product appears multiple times) ordered by OrderDate.
SELECT * ,
ROW_NUMBER() OVER( partition by Productname Order by orderdate ) as Row_num from Orders;

Show cumulative number of products bought per customer using ROW_NUMBER().

SELECT 
    CustomerName,
    OrderDate,
    ProductName,
    Quantity,
    ROW_NUMBER() OVER(PARTITION BY CustomerName ORDER BY OrderDate) AS Row_Num,
    SUM(Quantity) OVER(PARTITION BY CustomerName ORDER BY OrderDate 
                       ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS Cumulative_Products
FROM Orders;

Show each order with total quantity purchased per customer using SUM(TotalAmount) OVER(PARTITION BY CustomerID).

SELECT 
    *, 
    ROW_NUMBER() OVER(PARTITION BY CustomerID ORDER BY OrderDate) AS Row_num,
    SUM(Quantity) OVER(PARTITION BY CustomerID) AS Total_Quantity
FROM Orders;
use bank_db1
show tables
select * from orders;
Show row number per category for top 3 orders by TotalAmount.
select * from (
SELECT
    *,
    ROW_NUMBER() OVER(PARTITION BY Category ORDER BY TotalAmount DESC) AS Row_num
FROM Orders) as  ranked WHERE Row_num <= 3;
