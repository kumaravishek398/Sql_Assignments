
--Question 2
SELECT * FROM Employee
group by DOJ
HAVING MIN(Hiredate)


--Question 4
SELECT ProductName,MAX(UnitPrice) ,
MIN(UnitPrice)
FROM Product
GROUP BY ProductName, UnitPrice
HAVING count(unitprice)>1 


--Question 5
SELECT *
FROM Product
WHERE Stock is NULL;

--Question 6
SELECT *
FROM Product
WHERE unitinstock<unitonorder;




--Question 7
SELECT Categories,Suppliers
FROM Product
GROUP BY Categories,Suppliers
HAVING count(Categories)>=1 

--Question 10
SELECT CustomerID
FROM Customer
Whrere FirstName like 'ra%';



--Question 11
SELECT  SUBSTR(CompanyName,1, INSTR(CompanyName, ' '))
FROM jobs;