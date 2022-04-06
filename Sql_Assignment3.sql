


SELECT Order.*
FROM Customer INNER JOIN Order
ON    Customer.ID=Order.ID and Phone=0300074321;


SELECT * FROM Product
WHERE CATEGORY ='SeaFood'


SELECT Order.OrderID
FROM  Customer INNER JOIN Order
ON    Customer.ID=Order.ID and City NOT IN 'LONDON';


SELECT * 
FROM Product
WHERE ProductName ='Chai';

SELECT Name,DepartmentName,Rating
FROM Employee
WHERE Ename='Akash';


