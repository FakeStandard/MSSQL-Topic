--23
  SELECT 1 AS Reason, ISNULL(SUM(OD.Quantity * OD.UnitPrice), 0) AS Sales
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID AND MONTH(O.OrderDate) IN (1,2,3)
  WHERE YEAR(O.OrderDate) = 1998
  UNION
  SELECT 2 AS Reason, ISNULL(SUM(OD.Quantity * OD.UnitPrice), 0) AS Sales
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID AND MONTH(O.OrderDate) IN (4,5,6)
  WHERE YEAR(O.OrderDate) = 1998
  UNION
  SELECT 3 AS Reason, ISNULL(SUM(OD.Quantity * OD.UnitPrice), 0) AS Sales
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID AND MONTH(O.OrderDate) IN (7,8,9)
  WHERE YEAR(O.OrderDate) = 1998
  UNION
  SELECT 4 AS Reason, ISNULL(SUM(OD.Quantity * OD.UnitPrice), 0) AS Sales
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID AND MONTH(O.OrderDate) IN (10,11,12)
  WHERE YEAR(O.OrderDate) = 1998