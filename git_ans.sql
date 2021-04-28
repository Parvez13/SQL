-- TODO: joining two tables
-- SELECT Orders.OrderID,Customers.CustomerName,Orders.OrderDate
-- From Orders
-- INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID LIMIT 5;

-- TODO: JOINING MORE THAN TWO TABLES;
-- SELECT Orders.OrderID,Customers.CustomerName, Shippers.ShipperName
-- From ((Orders
-- INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
-- INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID

-- ) LIMIT 5;

-- TODO:  LEFT JOIN
-- SELECT Customers.CustomerName, Orders.OrderID
-- FROM Customers
-- LEFT JOIN Orders
-- ON Customers.CustomerID = Orders.CustomerID;

-- TODO: RIGHT JOIN
-- SELECT Customers.CustomerName, Orders.OrderID
-- FROM Customers
-- RIGHT JOIN Orders
-- ON Customers.CustomerID = Orders.CustomerID;

-- TODO: FULL OUTER JOIN
-- Can't be discussed in Mysql
-- TODO: UNION
-- SELECT City from Customers
-- UNION ALL
-- SELECT City from Suppliers ORDER BY City;

-- TODO: inner join between orders and customers

-- SELECT Orders.OrderID, customers.CustomerName, Orders.OrderDate
-- FROM Orders
-- INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID LIMIT 5;

-- SELECT Orders.OrderID,Customers.CustomerName, Customers.Country
-- FROM Orders
-- INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID LIMIT 5;

-- SELECT Categories.CategoryID, Customers.CustomerID,Customers.CustomerName, Customers.Address
-- FROM Categories
-- INNER JOIN Customers ON Categories.CategoryID = Customers.CustomerID ;