Select * from orders; 

INSERT INTO Orders (OrderID, Date, Quantity, Total, MenuID, StaffID, BookingID)
VALUES  
(7, '2022-10-10 20:46:00', 1, 40.00, 2, 5, 6); 

Call cancelorder(7);
