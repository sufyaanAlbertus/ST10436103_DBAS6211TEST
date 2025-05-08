-- Creating the data base  
CREATE DATABASE `ST10436103_Question3`;
-- setting the data base as main
USE `ST10436103_Question3`;

-- Q3.1 
CREATE TABLE Customer (
-- adding attributes to the table 
CustomerID INT NOT NULL PRIMARY KEY ,
CustomerFullName varchar(50),
CustomerEmail varchar(50)
);

-- Q3.2 
CREATE TABLE Orders (
-- adding attributes to the table 
OrderID INT NOT NULL PRIMARY KEY ,
OrderNumber INT,
CustomerID INT NOT NULL,
OrderDate VARCHAR(50),
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);


-- Q3.3
-- insert data for table Customer 
INSERT INTO Customer (CustomerID, CustomerFullName,CustomerEmail)
VALUES
(1,'Debbie Duncan','dduncan@yahoo.com');

-- used to show if data is in the table
SELECT * FROM Customer;  

-- insert data for table orders 
INSERT INTO Orders (OrderID, OrderNumber, CustomerID, OrderDate)
VALUES
(1, 020149 ,1, '2024-02-14');

-- used to show if data is in the table
SELECT * FROM Orders;  
