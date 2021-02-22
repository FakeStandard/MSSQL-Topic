--6
  SELECT E.EmployeeID, E.FirstName, E.City, C.CustomerID, C.CompanyName
  FROM Northwind.dbo.Employees AS E
  LEFT JOIN Northwind.dbo.Customers AS C ON E.City = C.City
  ORDER BY E.EmployeeID, C.CustomerID