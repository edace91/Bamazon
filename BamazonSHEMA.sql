CREATE DATABASE Bamazon;
USE Bamazon

CREATE TABLE Products(

	id INT NOT NULL AUTO_INCREMENT,
	ProductName VARCHAR(100)NULL,
	DepartmentName VARCHAR(100)NULL,
	Price DECIMAL(10,2) NULL,
	StockQuantity INT default 0,
	PRIMARY KEY (id)
);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('Nintendo 3DS XL','Video Games','196.47','3');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('Pokemon Sun','Video Games','39.96','5');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('Harry Potter and the Cursed Child','Books','17.98','10');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('Joanne','Music','13.99','20');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('Bose QuietComfort 35 Wireless Headphones','Electronics','349.00','6');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('Canon EOS 5D Mark IV Full Frame Digital SLR Camera Body','Electronics','3499.00','1');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('The Collected Works of Hayao Miyazaki (Amazon Exclusive) [Blu-ray]
','Movies','224.99','2');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('Catan 5th Edition','Toys','31.94','24');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('Apple Watch Sport,','Electronics','214.98','7');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('Microsoft Surface 3 ','Electronics','449.99','11');
