PREPARE GetOrderDetail FROM 'select OrderID ,Quantity,Total FROM Orders Where OrderID = ?';
SET @id = 1; 
EXECUTE GetOrderDetail USING @id ; 