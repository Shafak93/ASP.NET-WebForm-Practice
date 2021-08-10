Use master;
go
drop database if exists RetailerShop
go
create database RetailerShop
go
use RetailerShop
go

 Drop Table if exists OrderTable
 Drop Table if exists CustomerTable
 Drop Table if exists Product


 Create table CustomerTable
 (
 CustomerID int primary key identity,
 CustomerName nvarchar(50),
 Address nvarchar(50),
 City nvarchar(50),
 Email nvarchar(50),
 password varchar(20),
 DateOfBirth date 

 );
 go
 Select * from CustomerTable





 Create table OrderTable
 (
 OrderID int primary key,
 Item varchar(50),
 Quantity int,
 Price int,
 CustomerID int foreign key references CustomerTable(CustomerID)

 );
 go


 Create table Product
 (
 ProductID int primary key,
 ProductName nvarchar(50)
 )
 go

  


 --Insert into CustomerTable values (01,'Afsar','Dewanhat','Ctg','afsar@gmail.com');
 --Insert into CustomerTable values (02,'Akash','Lalkhanbazar','Ctg','akash@gmail.com');
 --Insert into CustomerTable values (03,'Mamun','Halishahar','Ctg','mamun@gmail.com')


 --Insert into OrderTable values (001,'Rupchada',1,600,02);
 --Insert into OrderTable values (002,'Milkvita',5,350,02);
 --Insert into OrderTable values (003,'Radhuni Moshla',5,50,01);
 --Insert into OrderTable values (004,'Lux',2,70,03)



 Select * from CustomerTable
 Select * from OrderTable
 Select * from Product

  




 