--20
  SELECT TOP 3 WITH TIES
  OD.OrderID, 
  SUM(OD.UnitPrice * OD.Quantity) AS Original
  FROM Northwind.dbo.[Order Details] AS OD
  GROUP BY OD.OrderID, (OD.UnitPrice * OD.Quantity)
  ORDER BY Original DESC