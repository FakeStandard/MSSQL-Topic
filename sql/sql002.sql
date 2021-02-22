-- 2
  SELECT 
  O.OrderID, 
  CONVERT(NCHAR,O.OrderDate,111) AS OrderDate, 
  P.ProductName, 
  (OD.UnitPrice * OD.Quantity) AS SalesAmt
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID
  INNER JOIN Northwind.dbo.Products AS P ON OD.ProductID = P.ProductID 
  WHERE O.OrderDate = (SELECT MAX(OrderDate) FROM Northwind.dbo.Orders)
  OR O.OrderDate = (SELECT MIN(OrderDate) FROM Northwind.dbo.Orders)