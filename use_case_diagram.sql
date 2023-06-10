
CREATE TABLE Products
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	ProName VARCHAR(255),
	ProductCode VARCHAR(255),
	UnitPrice MONEY
)

INSERT INTO Products(ProName, ProductCode, UnitPrice) 
VALUES
	('Nike', '123', 2),
	('Convert', '1234', 1),
	('Puma', '12345', 1),
	('Adidas', '113', 1),
	('Li Ning', '153', 2)

SELECT * FROM Products

CREATE TABLE Customers
(
	CusId INT PRIMARY KEY IDENTITY(1, 1),
	CusName VARCHAR(50),
	CusEmail VARCHAR(50),
	CusPhone VARCHAR(10),
	CusType INT
)

INSERT INTO  Customers (CusName, CusEmail, CusPhone, CusType)
VALUES ('Peter', 'peter@gmail.com', '0912345678', 1),
		('John', 'john@gmail.com', '0912349876', 2),
		('Mike', 'mike@gmail.com', '0918732876', 1)

SELECT * FROM Customers

CREATE TABLE Orders
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	CusId INT NOT NULL REFERENCES Customers(CusId),
	CreatedAt DATETIME,
	Total MONEY
)

INSERT INTO Orders(CusId, CreatedAt, Total)
VALUES(1, GETDATE(), 0),
		(2, GETDATE(), 0)

SELECT * FROM Orders

CREATE TABLE OrderDetails
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	OrderId INT NOT NULL REFERENCES Orders(Id),
	ProId INT NOT NULL REFERENCES Products(Id),
	ProQuantity INT NOT NULL
)

INSERT INTO OrderDetails(OrderId, ProId, ProQuantity) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 5),
(1,3,4)

SELECT * FROM Customers
SELECT * FROM Orders
SELECT * FROM Products
SELECT * FROM OrderDetails
