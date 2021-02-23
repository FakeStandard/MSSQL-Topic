--19
  SELECT TOP 3 P.CategoryID, COUNT(P.ProductID) AS Amount
  FROM Northwind.dbo.Products AS P
  GROUP BY P.CategoryID
  ORDER BY Amount DESC