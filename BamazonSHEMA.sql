CREATE DATABASE Bamazon;
USE Bamazon

CREATE TABLE Products(

	id INT NOT NULL,
	ProductName VARCHAR(100)NULL,
	DepartmentName VARCHAR(100)NULL,
	Price DECIMAL(10,2) NULL,
	StockQuantity INT default 0,
	PRIMARY KEY (id)
);

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('name','Krewella','Dance');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('TRNDSTTR','Black Coast','Dance');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('Whos Next','The Who','Classic Rock');

INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) 
VALUES ('Yellow Submarine','The Beatles','Classic Rock');
