--8
  SELECT 
  T.ReportsTo AS '�D�ޤ����u�s��', 
  T.Num AS '�U�ݤH��', 
  E.FirstName AS '�D�ަW��' FROM
  (
    SELECT E.ReportsTo, COUNT(E.EmployeeID) AS Num
    FROM Northwind.dbo.Employees AS E
    WHERE E.ReportsTo IS NOT NULL
    GROUP BY E.ReportsTo
  ) AS T
  INNER JOIN Northwind.dbo.Employees AS E ON T.ReportsTo = E.EmployeeID