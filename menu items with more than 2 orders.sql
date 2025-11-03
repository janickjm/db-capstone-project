SELECT m.Name
FROM Menu AS m
WHERE m.MenuID = ANY (
  SELECT o.MenuID
  FROM Orders AS o
  WHERE o.Quantity > 2
);