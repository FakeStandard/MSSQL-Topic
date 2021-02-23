--15
  SELECT 
  YEAR(O.OrderDate) AS SalesYear, 
  P.ProductName, 
  S.CompanyName,
  ROUND(SUM(OD.Quantity * (1-OD.Discount) * OD.UnitPrice), 1)AS Amount
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID AND YEAR(O.OrderDate) = 1996
  INNER JOIN Northwind.dbo.Products AS P ON OD.ProductID = P.ProductID
  INNER JOIN Northwind.dbo.Suppliers AS S ON P.SupplierID  = S.SupplierID
  GROUP BY YEAR(O.OrderDate), P.ProductName, S.CompanyName
  HAVING (SUM(OD.Quantity * (1-OD.Discount) * OD.UnitPrice)) BETWEEN 4000 AND 6000
  ORDER BY Amount DESC