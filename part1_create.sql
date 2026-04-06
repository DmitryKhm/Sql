-- PART 1 CREATE TABLES
CREATE TABLE Vehicle (
    maker VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    type VARCHAR(20) NOT NULL CHECK (type IN ('Car', 'Motorcycle', 'Bicycle')),
    PRIMARY KEY (model)
);

CREATE TABLE Car (
    vin VARCHAR(17) PRIMARY KEY,
    model VARCHAR(100) REFERENCES Vehicle(model),
    engine_capacity DECIMAL(4,2),
    horsepower INT,
    price DECIMAL(10,2),
    transmission VARCHAR(20)
);

CREATE TABLE Motorcycle (
    vin VARCHAR(17) PRIMARY KEY,
    model VARCHAR(100) REFERENCES Vehicle(model),
    engine_capacity DECIMAL(4,2),
    horsepower INT,
    price DECIMAL(10,2),
    type VARCHAR(20)
);

CREATE TABLE Bicycle (
    serial_number VARCHAR(20) PRIMARY KEY,
    model VARCHAR(100) REFERENCES Vehicle(model),
    gear_count INT,
    price DECIMAL(10,2),
    type VARCHAR(20)
);
