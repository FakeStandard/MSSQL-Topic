--13
  -- 方法一
  SELECT DISTINCT C.CustomerID, C.CompanyName, C.ContactName
  FROM Northwind.dbo.Customers AS C
  LEFT JOIN Northwind.dbo.Orders AS O ON C.CustomerID = O.CustomerID
  WHERE C.CustomerID NOT IN
  (SELECT CustomerID FROM Northwind.dbo.Orders 
   WHERE YEAR(OrderDate) = 1996 AND MONTH(OrderDate) = 7)
  ORDER BY C.CustomerID

  -- 方法二
  SELECT C.CustomerID, C.CompanyName, C.ContactName, O.ORDERDATE
  FROM Northwind.dbo.Customers AS C
  LEFT JOIN Northwind.dbo.Orders AS O ON C.CustomerID = O.CustomerID AND YEAR(O.OrderDate) = 1996 AND MONTH(O.OrderDate) = 7
  WHERE O.OrderDate IS NULL
  ORDER BY C.CustomerID