--12
  -- ��k�@
  SELECT C.CustomerID, C.CompanyName, C.ContactName
  FROM Northwind.dbo.Customers AS C
  WHERE CustomerID NOT IN 
	  (SELECT CustomerID FROM Northwind.dbo.Orders 
	   WHERE CustomerID = C.CustomerID)

  -- ��k�G
  SELECT C.CustomerID, C.CompanyName, C.ContactName
  FROM Northwind.dbo.Customers AS C
  LEFT JOIN Northwind.dbo.Orders AS O ON C.CustomerID = O.CustomerID
  WHERE O.OrderDate IS NULL