--8
  SELECT 
  T.ReportsTo AS '主管之員工編號', 
  T.Num AS '下屬人數', 
  E.FirstName AS '主管名稱' FROM
  (
    SELECT E.ReportsTo, COUNT(E.EmployeeID) AS Num
    FROM Northwind.dbo.Employees AS E
    WHERE E.ReportsTo IS NOT NULL
    GROUP BY E.ReportsTo
  ) AS T
  INNER JOIN Northwind.dbo.Employees AS E ON T.ReportsTo = E.EmployeeID