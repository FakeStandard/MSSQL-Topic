-- 4
  SELECT E.EmployeeID, E.FirstName, E.LastName, E.Title
  FROM Northwind.dbo.Employees AS E
  WHERE UPPER(E.Title) LIKE '%SALES%'
