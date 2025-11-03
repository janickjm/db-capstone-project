SHOW DATABASES;
USE `LittleLemonDB`;


INSERT INTO MenuItems (MenuItemID, CourseName, StarterName, DesertName)
VALUES
  (1, 'Moussaka', 'Tzatziki', 'Galaktoboureko'),
  (2, 'Lasagne alla Bolognese', 'Bruschetta', 'Tiramisu'),
  (3, 'Köfte', 'Mercimek çorbası', 'Künefe'),
  (4, 'Risotto ai funghi', 'Carpaccio de bœuf', 'Panna cotta'),
  (5, 'İmam bayıldı', 'Ezme', 'Lokum'),
  (6, 'Souvlaki', 'Dolmades', 'Loukoumades'),
  (7, 'Pollo alla cacciatora', 'Antipasti misti', 'Cannoli siciliani'),
  (8, 'Tavuk şiş', 'Sigara böreği', 'Sütlaç');



INSERT INTO Menu (MenuID,Name,Cuisine,MenuItemID)
VALUES
(1, 'Greek Menu for kids', 'Greek', 1),
(2, 'Greek Menu for others', 'Greek', 6),
(3, 'Italian Menu for vegans', 'Italian', 2),
(4, 'Italian Menu for kids', 'Italian', 4),
(5, 'Italian Menu for others', 'Italian', 7),
(6, 'Turkish Menu for kids', 'Turkish', 3),
(7, 'Turkish Menu for others', 'Turkish', 5),
(8, 'Turkish Menu for vegans', 'Turkish', 8);

INSERT INTO Clients (ClientID, FirstName, LastName, Phone)
VALUES
(1, 'Anna', 'Iversen', '0751526463'),
(2, 'Joakim', 'Iversen', '0751526464'),
(3, 'Vanessa', 'McCarthy', '0751526465'),
(4, 'Marcos', 'Romero', '0751526466'),
(5, 'Hiroki', 'Yamane', '0751526467'),
(6, 'Diana', 'Pinto', '0751526468');



INSERT INTO Roles (RoleID, Name)
VALUES
(1, 'Manager'),
(2, 'Assistant Manager'),
(3, 'Head Chef'),
(4, 'Chef'),
(5, 'Waiter');


INSERT INTO Staff (StaffID, FirstName, LastName, Salary, RoleID)
VALUES
(1, 'Mario', 'Rossi', 1800, 1),
(2, 'Anna', 'Bellucci', 1500, 2),
(3, 'Giovanni', 'Bianchi', 1700, 3),
(4, 'Maria', 'Verdi', 1500, 4),
(5, 'Luigi', 'Neri', 1400, 5),
(6, 'Francesca', 'Moretti', 1350, 5),
(7, 'Alessandro', 'Ferrari', 1450, 5),
(8, 'Chiara', 'Romano', 1380, 5),
(9, 'Stefano', 'Conti', 1420, 5);

INSERT INTO Booking (BookingID, BookingSlot, TableNo, ClientID, StaffID)
VALUES
(1, '2022-10-10 19:00:00', 1, 1, 5),
(2, '2022-10-10 19:00:00', 2, 2, 7),
(3, '2022-10-10 15:00:00', 3, 3, 5),
(4, '2022-10-10 17:30:00', 4, 4, 8),
(5, '2022-10-10 18:30:00', 5, 5, 6),
(6, '2022-10-10 20:00:00', 8, 6, 8);


INSERT INTO Status (StatusID, Status)
VALUES
(1, 'Ordered'),
(2, 'Order received'),
(3, 'Cooking'),
(4, 'Delivered'),
(5, 'Paid'),
(6, 'Cancelled');

INSERT INTO Orders (OrderID, Date, Quantity, Total, MenuID, StaffID, BookingID)
VALUES  
(1, '2022-10-10 19:05:00', 5, 260.00, 2, 5, 1),
(2, '2022-10-10 19:30:00', 2, 64.00, 3, 7, 2),
(3, '2022-10-10 15:25:00', 1, 28.00, 5, 5, 3),
(4, '2022-10-10 17:40:00', 5, 270.00, 7, 8, 4),
(5, '2022-10-10 18:38:00', 1, 55.00, 8, 6, 5),
(6, '2022-10-10 20:40:00', 1, 32.00, 3, 8, 6);





INSERT INTO OrderDelivery (OrderDeliveryID, Date, OrderID, StatusID, StaffID)
VALUES

(1, '2022-10-10 19:05:00', 1, 1, 5),
(2, '2022-10-10 19:15:00', 1, 2, 3),
(3, '2022-10-10 19:20:00', 1, 3, 4),
(4, '2022-10-10 19:40:00', 1, 4, 5),
(5, '2022-10-10 20:40:00', 1, 5, 2),


(6, '2022-10-10 19:30:00', 2, 1, 7),
(7, '2022-10-10 19:32:00', 2, 2, 3),
(8, '2022-10-10 19:39:00', 2, 3, 4),
(9, '2022-10-10 19:59:00', 2, 4, 7),
(10, '2022-10-10 20:50:00', 2, 5, 2),


(11, '2022-10-10 15:25:00', 3, 1, 5),
(12, '2022-10-10 15:30:00', 3, 2, 3),
(13, '2022-10-10 16:00:00', 3, 3, 4),
(14, '2022-10-10 16:30:00', 3, 4, 5),
(15, '2022-10-10 17:00:00', 3, 5, 2),


(16, '2022-10-10 17:40:00', 4, 1, 8),
(17, '2022-10-10 17:50:00', 4, 2, 3),
(18, '2022-10-10 18:00:00', 4, 3, 4),
(19, '2022-10-10 18:30:00', 4, 4, 8),
(20, '2022-10-10 19:30:00', 4, 5, 2),


(21, '2022-10-10 18:38:00', 5, 1, 6),
(22, '2022-10-10 18:45:00', 5, 2, 3),
(23, '2022-10-10 19:00:00', 5, 3, 4),
(24, '2022-10-10 19:30:00', 5, 4, 6),
(25, '2022-10-10 20:20:00', 5, 5, 2),


(26, '2022-10-10 20:40:00', 6, 1, 8),
(27, '2022-10-10 20:45:00', 6, 2, 3),
(28, '2022-10-10 20:59:00', 6, 3, 4),
(29, '2022-10-10 21:30:00', 6, 4, 8),
(30, '2022-10-10 22:15:00', 6, 5, 2);




