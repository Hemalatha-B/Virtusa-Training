---------INNER JOIN----------

SELECT Products.ProductID, Customers.CustomerName
FROM Products
INNER JOIN Customers ON Products.CustomerID = Customers.CustomerID;


---------LEFT JOIN-----------

SELECT Customers.CustomerName, Products.ProductID
FROM Customers
LEFT JOIN Products ON Customers.CustomerID = Products.CustomerID
ORDER BY Customers.CustomerName;


--------RIGHT JOIN------------

SELECT Products.ProductID, Customers.LastName, Customers.FirstName
FROM SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;
RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
ORDER BY Products.ProductID;


---------FULL JOIN------------

SELECT Customers.CustomerName, Products.ProductID
FROM Customers
FULL OUTER JOIN Products ON Customers.CustomerID=Products.CustomerID
ORDER BY Customers.CustomerName;


--------GROUP BY--------------

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;


-----------UNION---------------

SELECT FirstName FROM Customers
UNION
SELECT Address FROM Products
ORDER BY City;
