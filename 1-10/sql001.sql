-- 1
  SELECT 
  E.EmployeeID AS '員工編號',
  E.FirstName AS '員工姓名',
  ISNULL(E.ReportsTo, 0) AS '主管編號',
  ISNULL(E1.FirstName, '我是主管') AS '主管姓名'
  FROM Northwind.dbo.Employees AS E
  LEFT JOIN Northwind.dbo.Employees AS E1 ON E.ReportsTo = E1.EmployeeID