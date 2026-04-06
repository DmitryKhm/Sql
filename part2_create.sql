-- PART 2 CREATE TABLES
CREATE TABLE Classes (
    class VARCHAR(100) PRIMARY KEY,
    type VARCHAR(20),
    country VARCHAR(100),
    numDoors INT,
    engineSize DECIMAL(3,1),
    weight INT
);

CREATE TABLE Cars (
    name VARCHAR(100) PRIMARY KEY,
    class VARCHAR(100) REFERENCES Classes(class),
    year INT
);

CREATE TABLE Races (
    name VARCHAR(100) PRIMARY KEY,
    date DATE
);

CREATE TABLE Results (
    car VARCHAR(100),
    race VARCHAR(100),
    position INT,
    PRIMARY KEY (car, race)
);
