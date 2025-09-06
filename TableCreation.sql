CREATE TABLE Costume (
    costume_id INT PRIMARY KEY,
    current_price DECIMAL(10, 2) NOT NULL,
    costume_name VARCHAR(50) NOT NULL,
    costume_type VARCHAR(50) NOT NULL,
    count INT NOT NULL,
    description VARCHAR(255),
    image_url VARCHAR(255),
    location_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (location_id) REFERENCES Location(location_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
)

CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    description VARCHAR(255)
)

CREATE TABLE Booking (
    booking_id INT PRIMARY KEY,
    master_booking_id INT NOT NULL,
    customer_id INT NOT NULL,
    rent_date DATE NOT NULL,
    return_date DATE NOT NULL,
    duration INT NOT NULL,

    costume_id INT NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (costume_id) REFERENCES Costume(costume_id),
    FOREIGN KEY (master_booking_id) REFERENCES Booking(master_booking_id)
)


CREATE TABLE Repair (
    repair_id INT PRIMARY_KEY,
    price DECIMAL(10, 2) NOT NULL,
    description VARCHAR(255),

    booking_id INT NOT NULL,
    staff_id INT NOT NULL,
    
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
)

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    is_manager BOOLEAN NOT NULL,
    location_id INT NOT NULL,
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
)

CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
)

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(200) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL
)