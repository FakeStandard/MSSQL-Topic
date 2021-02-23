--16
  SELECT TOP 50 O.OrderID, OD.ProductID, OD.Quantity, OD.UnitPrice
  FROM Northwind.dbo.Orders as O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID
  ORDER BY OD.UnitPrice DESC, O.OrderID DESC, OD.ProductID DESC