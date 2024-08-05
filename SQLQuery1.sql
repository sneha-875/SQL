create database visionboardpractise;

use visionboardpractise;


CREATE TABLE Customers(

   customer_id int NOT NULL PRIMARY KEY,
   customer_name varchar(200));

CREATE TABLE Orders(

order_id int NOT NULL PRIMARY KEY,
FOREIGN KEY (customer_id)
REFERENCES Customers(customer_id),
customer_id int,
purchase_amount float,
order_date date)

Insert into Customers values(6,'John Doe');
Insert into Customers values(2,'Jame Smith');
Insert into Customers values(3,'JDavid Johnson');
Insert into Customers values(4,'Sarah Davis');

Insert into Orders values(6, 1,100.50,'2022-11-10');
Insert into Orders values(2,1,76.9,'2023-03-05');
Insert into Orders values(3,2,23.76,'2023-04-15');
Insert into Orders values(4,3,300.08,'2023-04-30');
Insert into Orders values(5,3,30.08,'2023-02-28');
Insert into Orders values(8,4,80.08,'2023-02-26');



Select * from customers;
Select * from orders;

----DISTINCT-----
Select Distinct * from Customers;
Select Distinct * from Orders;

------WHERE-----
Select customer_id, customer_name from Customers where customer_id=4;
Select * from Orders where customer_id=4;

------ORDER BY (ASC,DESC)-----

Select * from Customers order by customer_name;

Select * from Customers order by customer_name desc;

------- AND Operator ; Like ; OR ---------

Select * from Customers where customer_name like 'j%' and customer_id=1;

Select * from Customers where customer_name like 'j%' or customer_id=2;

Select * from Customers where customer_name like '%vis';

-----top 2 records--------

Select TOP 2 * from Customers;

---------aggregate functions- min; max; avg;sum;count---------------

Select count(*) from Customers


---- between--------

SeLECT * FROM Customers WHERE customer_id BETWEEN 3 AND 5;


----------- DROP ; TRUNCATE ;DELETE-----------------

----DELETE----

CREATE TABLE Customers1(

   customer_id int NOT NULL PRIMARY KEY,
   customer_name varchar(200));


Insert into Customers1 values(11,'Doe');
Insert into Customers1 values(12,'Jame Smith');
Insert into Customers1 values(13,'David');
Insert into Customers1 values(14,'Davis');

select * from Customers1


DELETE Customers1   
-- data is deleted but col name remains



-----DROP-----

CREATE TABLE Customers3(

   customer_id int NOT NULL PRIMARY KEY,
   customer_name varchar(200));


Insert into Customers3 values(11,'Doe');
Insert into Customers3 values(12,'Jame Smith');
Insert into Customers3 values(13,'David');
Insert into Customers3 values(14,'Davis');

select * from Customers3

DROP table Customers3
---whole table gets removed from db

-------------DELETE----------

CREATE TABLE Customers4(

   customer_id int NOT NULL PRIMARY KEY,
   customer_name varchar(200));


Insert into Customers4 values(11,'Doe');
Insert into Customers4 values(12,'Jame Smith');
Insert into Customers4 values(13,'David');
Insert into Customers4 values(14,'Davis');

select * from Customers4

---DROP table Customers4

TRUNCATE table Customers4
-- data is deleted but col name remains

