--5
  SELECT P.ProductID, P.ProductName, P.UnitsInStock
  FROM Northwind.dbo.Products AS P
  WHERE P.ProductID LIKE '5%'
  OR P.ProductID LIKE '_5%'