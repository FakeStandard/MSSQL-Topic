--10
  SELECT C.CustomerID, C.CompanyName, SUM(OD.UnitPrice * OD.Quantity) AS Growth
  FROM Northwind.dbo.Customers AS C
  LEFT JOIN Northwind.dbo.Orders AS O ON C.CustomerID = O.CustomerID
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID
  GROUP BY C.CustomerID, C.CompanyName
  ORDER BY Growth DESC