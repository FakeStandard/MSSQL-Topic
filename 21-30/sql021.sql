--21
  -- 方法一
  SELECT 
  P.ProductID, 
  P.ProductName, 
  P.UnitPrice, 
  CASE 
    WHEN P.UnitPrice > 60 THEN P.UnitPrice * 1.2
	WHEN P.UnitPrice >= 40 AND P.UnitPrice <= 60 THEN P.UnitPrice * 1.15
	WHEN P.UnitPrice < 40 THEN P.UnitPrice * 1.1 
  END AS IncreasePrice
  FROM Northwind.dbo.Products AS P

  -- 方法二
  SELECT P.ProductID, P.ProductName,　P.UnitPrice * 1.2
  FROM Northwind.dbo.Products AS P
  WHERE P.UnitPrice > 60
  UNION
  SELECT P.ProductID, P.ProductName,　P.UnitPrice * 1.15
  FROM Northwind.dbo.Products AS P
  WHERE P.UnitPrice >= 40 AND P.UnitPrice <= 60
  UNION
  SELECT P.ProductID, P.ProductName,　P.UnitPrice * 1.1
  FROM Northwind.dbo.Products AS P
  WHERE P.UnitPrice < 40