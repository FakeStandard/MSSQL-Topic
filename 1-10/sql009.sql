--9
  SELECT O.EmployeeID, E.FirstName, SUM(OD.Quantity * OD.UnitPrice) AS Growth
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID
  RIGHT JOIN Northwind.dbo.Employees AS E ON O.EmployeeID = E.EmployeeID
  GROUP BY O.EmployeeID, E.FirstName
  ORDER BY Growth DESC