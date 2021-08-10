Use master;
go
drop database if exists RetailerShop
go
create database RetailerShop
go
use RetailerShop
go


 Create table CustomerTable
 (
 CustomerID int primary key identity,
 CustomerName nvarchar(50),
 Address nvarchar(50),
 City nvarchar(50),
 Email nvarchar(50)
 );
 go

 Create table OrderTable
 (
 OrderID int primary key,
 Item varchar(50),
 Quantity int,
 Price int,
 CustomerID int foreign key references CustomerTable(CustomerID)
 );
 go