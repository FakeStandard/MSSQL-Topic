-- 3
  -- 方法一
  SELECT DISTINCT C.CustomerID, C.CompanyName, C.ContactName, C.ContactTitle, C.Address
  FROM Northwind.dbo.Customers AS C
  LEFT JOIN Northwind.dbo.Orders AS O ON C.CustomerID = O.CustomerID
  WHERE C.CustomerID NOT IN (SELECT CustomerID FROM Northwind.dbo.Orders WHERE YEAR(OrderDate) = 1997)
  
  -- 方法二
  SELECT C.CustomerID, C.CompanyName, C.ContactName, C.ContactTitle, C.Address
  FROM Northwind.dbo.Customers AS C
  LEFT JOIN Northwind.dbo.Orders AS O ON C.CustomerID = O.CustomerID AND YEAR(O.OrderDate) = 1997
  WHERE O.OrderID IS NULL