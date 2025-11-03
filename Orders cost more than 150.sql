SELECT 
  a.ClientID, 
  CONCAT(a.FirstName, ' ', a.LastName) AS FullName,
  o.OrderID, 
  o.Total, 
  m.Name AS MenuName, 
  mi.CourseName
FROM Clients AS a
INNER JOIN Booking AS b ON a.ClientID = b.ClientID
INNER JOIN Orders AS o ON b.BookingID = o.BookingID
INNER JOIN Menu AS m ON o.MenuID = m.MenuID
INNER JOIN MenuItems AS mi ON m.MenuItemID = mi.MenuItemID
WHERE o.Total > 150;