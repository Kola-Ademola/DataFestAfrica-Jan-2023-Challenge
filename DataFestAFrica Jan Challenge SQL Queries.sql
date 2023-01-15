-- How many orders were shipped by Speedy Express in total?

SELECT s.ShipperName,
		COUNT(*) TotalOrders
FROM [Orders] o
JOIN [Shippers] s ON o.ShipperID = s.ShipperID
WHERE s.ShipperName = 'Speedy Express'


-- What is the last name of the employee with the most orders?

SELECT e.LastName,
        	COUNT(*) OrderCount
FROM [Orders] o
JOIN [Employees] e ON o.EmployeeID = e.EmployeeID
GROUP BY 1 
ORDER BY 3 DESC
LIMIT 1


-- What product was ordered the most by customers in Germany?

SELECT p.ProductName,
		c.Country,
        od.Quantity
FROM [OrderDetails] od
JOIN [Orders] o ON od.OrderID = o.OrderID
JOIN [Products] p ON od.ProductID = p.ProductID
JOIN [Customers] c ON o.CustomerID = c.CustomerID
WHERE c.Country = 'Germany'
GROUP BY p.ProductName
ORDER BY 3 DESC
LIMIT 1