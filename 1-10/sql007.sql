--7
  SELECT
    P.ProductID AS '產品編號',
	P.ProductName AS '產品名稱',
	YEAR(O.OrderDate) AS '年度',
	SUM(OD.Quantity) AS '銷售總量'
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID
  INNER JOIN Northwind.dbo.Products AS P ON OD.ProductID = P.ProductID
  GROUP BY P.ProductID, P.ProductName, YEAR(OrderDate)
  ORDER BY 1 DESC, 3 DESC
