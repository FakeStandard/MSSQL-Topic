--7
  SELECT
    P.ProductID AS '���~�s��',
	P.ProductName AS '���~�W��',
	YEAR(O.OrderDate) AS '�~��',
	SUM(OD.Quantity) AS '�P���`�q'
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID
  INNER JOIN Northwind.dbo.Products AS P ON OD.ProductID = P.ProductID
  GROUP BY P.ProductID, P.ProductName, YEAR(OrderDate)
  ORDER BY 1 DESC, 3 DESC
