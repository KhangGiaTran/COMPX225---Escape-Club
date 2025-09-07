INSERT INTO Customer (customer_id, name, address, phone_number, email) VALUES
(1, 'John A', '123 Street, Hamilton', '0123456789', 'john.a@example.com'),
(2, 'John B', '123 Street, Hamilton', '0123456789', 'john.b@example.com'),
(3, 'John C', '123 Street, Hamilton', '0123456789', 'john.c@example.com'),
(4, 'John D', '123 Street, Hamilton', '0123456789', 'john.d@example.com');

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
(1, 'Halloween', 'Men Halloween Costumes'),
(2, 'Famous Men & Star', 'Famous Men & Star Costumes'),
(3, '20s & Gangster', '20s & Gangster Costumes'),
(4, 'Mens Creature Costumes', 'Mens Creature Costumes');

INSERT INTO Costume (costume_id, current_price, costume_name, costume_type, count, description, image_url, location_id, category_id) VALUES
(1, 65.0, 'Grim Reaper Deluxe', 'Set', 10, 'Includes: Robe, Hood with attached cape, Belt tie, Gloves. Not included: Shoes, Scythe, Face Paint.', 'https://www.partydudes.co.nz/cdn/shop/products/1005_grim_reaper_costume.jpg?v=1613147550', 1, 1),
(2, 44.0, 'Baywatch Stud', 'Set', 5, 'Includes: Jacket, Shorts. Not included: Float.', 'https://www.partydudes.co.nz/cdn/shop/products/20587_Baywatch_Lifeguard_Costume.jpg?v=1755386503', 2, 2),
(3, 79.0, 'Smooth Criminal Michael Jackson', 'Set', 8, 'Includes: Jacket, Sleeveless Shirt, Pants, Hat, Wig, Tie. Not included: Shoes, Spats, Suspenders.', 'https://www.partydudes.co.nz/cdn/shop/products/smooth_criminal_michael_jackson_costume_lrg.jpg?v=1591883920', 3, 3),
(4, 100.0, 'Gorilla', 'Set', 12, 'Includes: Jumpsuit, Headpiece, Gloves, Feet.', 'https://www.partydudes.co.nz/cdn/shop/files/24230-gorilla-costume.jpg?v=1751409903', 4, 4);

INSERT INTO Booking (booking_id, master_booking_id, customer_id, rent_date, return_date, duration, costume_id, cost) VALUES
(1, 1, 1, '2025-10-01', '2025-10-05', 96, 1, 65.0),
(2, 1, 1, '2025-10-01', '2025-10-05', 96, 2, 44.0),
(3, 2, 2, '2025-11-01', '2025-11-03', 49, 3, 79.0),
(4, 2, 2, '2025-11-01', '2025-11-03', 49, 4, 100.0);

INSERT INTO Repair (repair_id, price, description, booking_id, staff_id) VALUES
(1, 50.0, 'Repair for Booking 1', 1, 1),
(2, 50.0, 'Repair for Booking 2', 3, 2),
(3, 50.0, 'Repair for Booking 3', 2, 3),
(4, 50.0, 'Repair for Booking 4', 4, 4);