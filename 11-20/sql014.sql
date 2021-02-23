--14
  --方法一
  SELECT CA.CategoryID, CA.CategoryName
  FROM Northwind.dbo.Orders AS O
  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID AND O.OrderDate = '1997/6/2'
  INNER JOIN Northwind.dbo.Products AS P ON OD.ProductID = P.ProductID
  RIGHT JOIN Northwind.dbo.Categories AS CA ON P.CategoryID = CA.CategoryID
  WHERE O.OrderDate IS NULL

  --方法二
  SELECT CA.CategoryID, CA.CategoryName
  FROM Northwind.dbo.Categories AS CA
  WHERE CA.CategoryID NOT IN
  (
	  SELECT P.CategoryID
	  FROM Northwind.dbo.Orders AS O
	  INNER JOIN Northwind.dbo.[Order Details] AS OD ON O.OrderID = OD.OrderID
	  INNER JOIN Northwind.dbo.Products AS P ON OD.ProductID = P.ProductID
	  WHERE O.OrderDate = '1997/6/2'
  )