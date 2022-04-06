use Customer_Data;
Go

--Question 1

SELECT * FROM Customer
WHERE Country= 'GERMANY';


--Question 2   FullName
SELECT FirstName,LastName FROM Customer;


--Question 3
SELECT * FROM Customer
WHERE FaxNumber is NOT NULL;


--Question 4
SELECT * FROM Customer
WHERE  FirstName Like '_u%';


--Question 5
SELECT *
FROM Order 
WHERE UnitPrice between 11 and 19;

--Question 6
SELECT *
FROM Order 
WHERE ShipingDate is NOT NULL
ORDER BY Date;


--Question 7
SELECT *
 FROM Order 
WHERE ShipName IN('La corned abondance') and date BETWEEN '2021-05-12' and '2022-08-25';


--Question 8
SELECT *
 FROM Product
where CompanyName ='Exotic Liquids';


--Question 9
SELECT AVG(Quantity) as Avg_Quantity
 FROM OrderItem



--Question 10
SELECT ShippingCompnyName,ShipName
FROM Product
where Operation is NOT NULL;

--Question 11
SELECT Emp.Ename as Employee_name ,Mgr.Ename as Manager_name
FROM Employee Emp,Employee Mgr
WHERE Emp.MGR=Emp.Empno;

--Question 12
SELECT P_item.ProductName,P_item.CategoryName,O_item .Price
from OrderItem O_item INNER JOIN Product P_item
ON O_item.OrderID=101 price<500;



--Question 13
SELECT SUM(UnitPrice) AS TotalPrice 
FROM OrderItem 
WHERE shippingCompany='Exoctic Liquids' AND UnitPrice>50;


