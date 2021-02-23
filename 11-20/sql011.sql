--11
  SELECT P.ProductID, P.ProductName, SUM(OD.Quantity * OD.UnitPrice) AS Growth
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID
  RIGHT JOIN Northwind.dbo.Products AS P ON OD.ProductID = P.ProductID
  GROUP BY P.ProductID, P.ProductName
  ORDER BY Growth DESC