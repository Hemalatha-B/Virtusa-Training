CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
    Country varchar(255)
);
INSERT INTO Persons ( PersonID, LastName, FirstName, Address, City, Country)
VALUES ('101', 'B', 'Hemalatha', 'ram street', 'Tirupur', 'India');
INSERT INTO Persons ( PersonID, LastName, FirstName, Address, City, Country)
VALUES ('102', 'R', 'Malini', 'Sri street', 'Chennai', 'India');
INSERT INTO Persons ( PersonID, LastName, FirstName, Address, City, Country)
VALUES ('103', 'S', 'Pranav', 'ram street', 'Tirupur', 'India');
INSERT INTO Persons ( PersonID, LastName, FirstName, Address, City, Country)
VALUES ('104', 'S', 'Shubika', 'Lakshmi street', 'Salem', 'India');
INSERT INTO Persons ( PersonID, LastName, FirstName, Address, City, Country)
VALUES ('105', 'K', 'Vinitha', 'Kumar street', 'Erode', 'India');
INSERT INTO Persons ( PersonID, LastName, FirstName, Address, City, Country)
VALUES ('106', 'B', 'Nithya', 'RVS street', 'Salem', 'India');

SELECT * FROM Persons
WHERE City='Tirupur'
FETCH FIRST 1 ROWS ONLY;

SELECT COUNT(PersonID)
FROM Persons;

SELECT * FROM Persons
WHERE FirstName LIKE 'S%a';

SELECT * FROM Persons
ORDER BY FirstName DESC;

SELECT SUM(PersonID) as Total
FROM Persons
WHERE City='Tirupur';

