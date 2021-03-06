/*
Задание 5
SCHEMA:
Create table If Not Exists Customers (Id int, Name varchar(255))
Create table If Not Exists Orders (Id int, CustomerId int)
Truncate table Customers
insert into Customers (Id, Name) values ('1', 'Joe')
insert into Customers (Id, Name) values ('2', 'Henry')
insert into Customers (Id, Name) values ('3', 'Sam')
insert into Customers (Id, Name) values ('4', 'Max')
Truncate table Orders
insert into Orders (Id, CustomerId) values ('1', '3')
insert into Orders (Id, CustomerId) values ('2', '1')


Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.
Table: Customers.
+----+-------+
| Id | Name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+

Table: Orders.
+----+------------+
| Id | CustomerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+

Using the above tables as example, return the following:
+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+

*/

CREATE TABLE Customers (Id INT, Name VARCHAR(255));
CREATE TABLE Orders (Id INT, CustomerId INT);

INSERT INTO Customers (Id, Name) VALUES ('1', 'Joe');
INSERT INTO Customers (Id, Name) VALUES ('2', 'Henry');
INSERT INTO Customers (Id, Name) VALUES ('3', 'Sam');
INSERT INTO Customers (Id, Name) VALUES ('4', 'Max');

INSERT INTO Orders (Id, CustomerId) VALUES ('1', '3');
INSERT INTO Orders (Id, CustomerId) VALUES ('2', '1');

SELECT cus.Name AS Customers
FROM Customers cus
LEFT JOIN Orders ord
ON cus.Id = ord.CustomerId
WHERE ord.Id IS NULL;