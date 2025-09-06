INSERT INTO Customer (customer_id, name, address, phone_number, email) VALUES
(1, 'John A', '123 Street, Hamilton', '01234567', 'john.a@example.com'),
(2, 'John B', '123 Street, Hamilton', '01234567', 'john.b@example.com'),
(3, 'John C', '123 Street, Hamilton', '01234567', 'john.c@example.com'),
(4, 'John D', '123 Street, Hamilton', '01234567', 'john.d@example.com');

INSERT INTO Location (location_id, name) VALUES
(1, '1 Street, Hamilton'),
(2, '2 Street, Hamilton'),
(3, '3 Street, Hamilton'),
(4, '4 Street, Hamilton');

INSERT INTO Staff (staff_id, name, is_manager, location_id) VALUES
(1, 'Alice', TRUE, 1),
(2, 'Bob', FALSE, 1),
(3, 'Charlie', FALSE, 2),
(4, 'David', TRUE, 2);

INSERT INTO Category (category_id, category_name, description) VALUES
(1, 'Halloween', 'Description for Halloween'),
(2, 'Summer', 'Description for Summer'),
(3, 'Winter', 'Description for Winter'),
(4, 'Spring', 'Description for Spring');

INSERT INTO Costume (costume_id, current_price, costume_name, costume_type, count, description, image_url, location_id, category_id) VALUES
(1, 100.0, 'A Costume', 'Jeans', 10, 'Description for A.', 'http://example.com/A.png', 1, 1),
(2, 100.0, 'B Costume', 'Shirt', 5, 'Description for B.', 'http://example.com/B.png', 2, 2),
(3, 100.0, 'C Costume', 'Shorts', 8, 'Description for C.', 'http://example.com/C.png', 3, 3),
(4, 100.0, 'D Costume', 'Shirt', 12, 'Description for D.', 'http://example.com/D.png', 4, 4);

INSERT INTO Booking (booking_id, master_booking_id, customer_id, rent_date, return_date, duration, costume_id, cost) VALUES
(1, 1, 1, '2025-10-01', '2025-10-05', 96, 1, 100.0),
(2, 1, 1, '2025-10-01', '2025-10-05', 96, 2, 100.0),
(3, 2, 2, '2025-11-01', '2025-11-03', 49, 3, 100.0),
(4, 2, 2, '2025-11-01', '2025-11-03', 49, 4, 100.0);

INSERT INTO Repair (repair_id, price, description, booking_id, staff_id) VALUES
(1, 50.0, 'Repair for Booking 1', 1, 1),
(2, 50.0, 'Repair for Booking 2', 3, 2),
(3, 50.0, 'Repair for Booking 3', 2, 3),
(4, 50.0, 'Repair for Booking 4', 4, 4);