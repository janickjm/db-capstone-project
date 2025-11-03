DELIMITER //

CREATE PROCEDURE CancelOrder(IN inputOrderID INT)
BEGIN
  DELETE FROM Orders
  WHERE OrderID = inputOrderID;

  SELECT CONCAT('Order ', inputOrderID, ' is cancelled') AS Confirmation;
END //

DELIMITER ;