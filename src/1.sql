/*
Задание 1

SCHEMA:

Create table Person (PersonId int, FirstName varchar(255), LastName varchar(255))
Create table Address (AddressId int, PersonId int, City varchar(255), State varchar(255))
Truncate table Person
insert into Person (PersonId, LastName, FirstName) values ('1.sql', 'Wang', 'Allen')
Truncate table Address
insert into Address (AddressId, PersonId, City, State) values ('1.sql', '2', 'New York City', 'New York')

    Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:
FirstName, LastName, City, State
*/

CREATE TABLE Person(
   PersonId INT NOT NULL,
   FirstName VARCHAR(255),
   LastName VARCHAR(255),
   PRIMARY KEY(PersonId)
);

CREATE TABLE Address(
    AddressId INT NOT NULL,
    PersonId INT NOT NULL,
    City VARCHAR(255),
    State VARCHAR(255),
    PRIMARY KEY(AddressId)
);

TRUNCATE TABLE Person;

INSERT INTO Person (PersonId, LastName, FirstName) VALUES ('1', 'Wang', 'Allen');
INSERT INTO Person (PersonId, LastName, FirstName) VALUES ('2', 'John', 'Smith');
INSERT INTO Person (PersonId, LastName, FirstName) VALUES ('3', 'Lee', 'Cooper');
INSERT INTO Person (PersonId, LastName, FirstName) VALUES ('4', 'Mike', 'Prat');
INSERT INTO Person (PersonId, LastName, FirstName) VALUES ('5', 'Ann', 'Miller');

TRUNCATE TABLE Address;

INSERT INTO Address (AddressId, PersonId, City, State) VALUES ('1', '2', 'New York City', 'New York');
INSERT INTO Address (AddressId, PersonId, City, State) VALUES ('2', '3', 'Los Angeles', 'California');
INSERT INTO Address (AddressId, PersonId, City, State) VALUES ('3', '1', 'Chicago', 'Illinois');
INSERT INTO Address (AddressId, PersonId, City, State) VALUES ('4', '5', 'Houston', 'Texas');
INSERT INTO Address (AddressId, PersonId, City, State) VALUES ('5', '4', 'Phoenix', 'Arizona');

SELECT FirstName, LastName, City, State
    FROM Person
    INNER JOIN Address
    ON Person.Personid = Address.PersonId;