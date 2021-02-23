--18
  SELECT TOP 15 O.CustomerID, AVG(OD.Quantity * OD.UnitPrice) AS Average
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID
  GROUP BY O.CustomerID
  ORDER BY Average DESC
