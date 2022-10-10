#Assignment Q1.

create database HOTEL_MANAGEMENT_SYSTEM; 

Create table Customers_Hotel
(
Cust_ID int  not null,
cust_name varchar(25),
Cust_City varchar (25),
Cust_RoomNo int,
CheckIn_Time datetime
 );
 
 insert into Customers_Hotel
 (Cust_ID, Cust_name, Cust_City, Cust_roomNo, CheckIn_time)
 values
 (01, 'Shyam', 'Edison', 101, '2022-10-10 12:12:34'),
 (02, 'Sam', 'New York', 102, '2022-11-14 01:45:12'),
 (03, 'Smith', 'San Francisco', 103, '2022-09-16 13:55:14'),
 (04, 'John', 'LA', 104, '2022-07-22 19:29:44'),
 (05, 'Bob', 'Boston', 105, '2022-09-01 07:01:58')
 ;
 
 select * from Customers_Hotel;
 
 # Assignment Q.2

 # Print Distinct City from Table Customers and Print Count Distinct City from Table Customers.
 
 select count(distinct city) from Customers;

#Write a SQL query to get the least number of quantities and the highest number of quantities bought by the user consider the OrderDetails Table.

select MAX(Quantity), Min(Quantity) from order_details;

#Print the total and an average number of quantities ordered by users, consider the OrderDetails Table.

select sum(Quantity), avg(Quantity) from order_details;

# Print name of the product which is present at the 5th position till the 15th position from Products table, use LIMIT keyword.

Select * from products Limit 4,11;

#Write a SQL query for all the details of the supplier whose name consists of “A” at the second position from the Suppliers table.

select * from suppliers
where SupplierName Like '_a%';

#Print the details of the customer who doesn’t stay in the USA and Canada from the Customers table.

select * from Customers
where Not Country ='USA' and Not Country='Canada';

#Print the details of all the orders which were placed between the year 2020 to 2021 also print the same in descending order from the OrderDetails table.

Select Order_Details.OrderDetailID, Order_Details.OrderID, Order_Details.ProductID, Order_Details.Quantity from Order_Details 
left Join orders
on Order_details.OrderID = Orders.OrderID
where orders.OrderDate Between '2020-01-013' and '2021/12/31'
Order By OrderID Desc ;
#There is no column name as Orderdate in OrderDetails table so I had to merge the table. 

#Write a query to show the distinct city and their count from the Customers table.

Select Count(Distinct City) from customers;

#Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the Employees table.

select * from employees
where not FirstName ='Sanjay' and not FirstName = 'Sonia';

#Duplicate a table as similar to the Suppliers table and name it as SupplierDetail.

Create table Supplierdetail like Suppliers;

Insert Into Supplierdetail select * from Suppliers;

select * from Supplierdetail;

#Delete customer details whose country is Venezuela and print the rest of the Customer table

Delete from customers 
where country = 'Venezuela';
