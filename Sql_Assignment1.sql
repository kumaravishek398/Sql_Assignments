create Database Customer_Data;

use Customer_Data;



#creating Customer table

create table Customer
(
ID  int  PRIMARY KEY,
FirstName nvarchar(40) NOT NULL,
LastName  nvarchar(40),
City     nvarchar(40),
Country   nvarchar(40),
Phone     nvarchar(20)

);

#Index for customer Table

CREATE INDEX IndexOrderCustomerId
ON Customer(FirstName,LastName);



INSERT INTO Customer(ID,FirstName,LastName,City,Country,Phone)
VALUES(1,'Avishek','kumar','Asansol','INDIA','9851589778'),
(2,'Selena','gomez','NewYork','USA','92579451359'),
(3,'Suzy','bae','Seol','KOREA','9458791325'),
(4,'Akiyama','hashimoto','TOKYO','JAPAN','12457893587');




#All customer details

select * FROM Customer;

# display country according to name
SELECT Country
FROM Customer
WHERE FirstName Like 'A%' or FirstName Like 'I%';

# display name whose 3rd character is I
SELECT FirstName
FROM Customer
WHERE FirstName Like '--i%;

-----------------------------------------------------------------------


#Creating table order

create table Order
(
ID  int  Primary Key,
OrderDate daytime NOT NULL,
OrderNumber  nvarchar(40),
CustomerId     int,
TotalAmount   decimal(12,2),
CONSTRAINT FK_Customerid FOREIGN KEY (Customerid)
    REFERENCES Customer(ID)
);


#Index for Order Table

CREATE INDEX IndexOrderCustomerId
ON Order(CustomerId);
CREATE INDEX IndexOrderOrderDate
ON Order(OrderDate);


INSERT INTO Customer(ID,OrderDate,OrderNumber,Customerid,TotalAmount)
VALUES(1,'2021-03-10 13:34:55','101',125,4598.54),
(2,'2021-03-15 13:48:15','102',126,4067.00),
(3,'2021-03-26 15:21:25','103',127,501.50),
(4,'2021-03-30 16:50:52','104',128,1214.76);

--------------------------------------------------

#Creating table Product

create table Product
(
ID  int  PRIMARY KEY,
ProductName nvarchar(50) NOT NULL,
UnitPrice  decimal(12,2),
Package     nvarchar(30),
IsDiscontinued  bit

);


#Index for Product Table

CREATE INDEX IndexProductSupplierId
ON ProductTable(ID);
CREATE INDEX IndexProductName
ON ProductTable(ProductName);


INSERT INTO Product(ID,ProductName,UnitPrice,Package,IsDiscontinued)
VALUES(1,'laptop',50000.50,'ABC',1),
(2,'desktop',45008.00,'blue',1),
(3,'battery',35008.00,'jC',0),
(4,'hard disk',40008.00,'zhc',1);






---------------------------------------------
#Creating table orderItem

create table OrderItem
(
ID  int  ,
OrderID int,
ProductID  int,
UnitPrice  int,
Quantity   decimal(12,2),
CONSTRAINT FK_OrderItem_id Primary Key(ID),

CONSTRAINT FK_OrderTable_id FOREIGN KEY (OrderID)
    REFERENCES Order(ID),

CONSTRAINT FK_ProductTable_ID FOREIGN KEY (ProductID)
    REFERENCES Product(ID)
);



#Index for OrderItem Table

CREATE INDEX IndexOrderItemOrderId
ON OrderItemTable(ID);
CREATE INDEX IndexOrderItemProductId
ON OrderItemTable(ProductID);



INSERT INTO OrderItem(ID,OrderID,ProductID,UnitPrice,Quantity)
VALUES(1,101,45250,100.00,8),
(2,102,451,35000.00,5),
(3,103,452,55000.00,7),
(4,104,453,12500.00,1);




