create database Departaments



use Departaments;
create table Workers
(
   [Name] varchar(30),
   [Surname] varchar(50),
   [PostionWorkerId] int primary key identity,
   [Salary] float
)
insert into Workers([Name],Surname,Salary)
values ('John','Kennedi',1200),
('Thomas','Karlson',1000),
('Carl','Johnson',900),
('Lens','Wilson',1100),
('Melvin','Harris',1290.5);

select *from Workers
create table Position
(
   [Name] varchar(50)
)

create table Filial
(
   [Name] varchar(50)
)
insert into Filial([Name])
values ('Masazir'),
('Xirdalan'),
('Lokbatan'),
('Park Bulvar'),
('Koroglu');

create table Product
(
   [Id] int primary key identity,
   [Name] varchar(50),
   [PurchasePrice] float,
   [SellPrice] float
)
drop table Workers
insert into Product([Name],PurchasePrice,SellPrice)
values('Tutku',0.5,2.5),
('Ariel',1,3.7),
('Bread',0.1,0.65),
('Garlic',0.9,5.5),
('Potatos',2,2.2);

select *from Product


create table Sell
(
   [DateSell] varchar(50),
   [ProductId] int constraint PI_Product foreign key references Product(Id),
   [Worker_Id] int constraint WI_Worker foreign key references Workers(PostionWorkerId)
)


insert into Sell(DateSell)
values('2022-01-10'),
('2022-04-11'),
('2022-01-20'),
('2022-09-17'),
('2022-02-25');

Select *from Sell 
full join Product on Sell.ProductId = Product.Id
full join Workers on Sell.Worker_Id = Workers.PostionWorkerId;

Select Sum([SellPrice]) as Total from Product
Select Sum([SellPrice]) as Mouth from Product where DateSell = 4;