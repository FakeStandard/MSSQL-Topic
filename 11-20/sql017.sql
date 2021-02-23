--17
  SELECT TOP 15 O.CustomerID, SUM(OD.UnitPrice * OD.Quantity) AS Amount
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID
  GROUP BY O.CustomerID
  ORDER BY Amount DESC