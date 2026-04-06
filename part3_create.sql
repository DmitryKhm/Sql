-- PART 3 CREATE TABLES
CREATE TABLE Hotel (
    ID_hotel SERIAL PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255)
);

CREATE TABLE Room (
    ID_room SERIAL PRIMARY KEY,
    ID_hotel INT REFERENCES Hotel(ID_hotel),
    room_type VARCHAR(20),
    price DECIMAL(10,2),
    capacity INT
);

CREATE TABLE Customer (
    ID_customer SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20)
);

CREATE TABLE Booking (
    ID_booking SERIAL PRIMARY KEY,
    ID_room INT REFERENCES Room(ID_room),
    ID_customer INT REFERENCES Customer(ID_customer),
    check_in_date DATE,
    check_out_date DATE
);
