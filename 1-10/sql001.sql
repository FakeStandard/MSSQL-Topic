-- 1
  SELECT 
  E.EmployeeID AS '���u�s��',
  E.FirstName AS '���u�m�W',
  ISNULL(E.ReportsTo, 0) AS '�D�޽s��',
  ISNULL(E1.FirstName, '�ڬO�D��') AS '�D�ީm�W'
  FROM Northwind.dbo.Employees AS E
  LEFT JOIN Northwind.dbo.Employees AS E1 ON E.ReportsTo = E1.EmployeeID