CREATE DEFINER=`admin2`@`%` PROCEDURE `CheckBooking`(IN inputSlot DATE ,IN inputTable INT)
BEGIN
  DECLARE bookingCount INT;

  SELECT COUNT(*) INTO bookingCount
  FROM Booking
  WHERE TableNo = inputTable AND DATE(BookingSlot) = inputSlot;

  IF bookingCount > 0 THEN
    SELECT CONCAT('Table ', inputTable, ' is already booked') AS 'Booking Status';
  ELSE
    SELECT CONCAT('Table ', inputTable, ' is available', inputSlot) AS 'Booking Status';
  END IF;
END