CREATE TABLE Cars (
    CarID INT PRIMARY KEY,
    Make VARCHAR(255),
    Model VARCHAR(255),
    Year INT,
    Price DECIMAL(10, 2)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    CarID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID)
);
ALTER TABLE Cars ADD CONSTRAINT CHK_PriceNonNegative CHECK (Price >= 0);

ALTER TABLE Cars ADD COLUMN Color VARCHAR(255);

SELECT * FROM Cars where ____ top 10 limit 10;

INSERT INTO Cars (Make, Model, Year, Price, Color) VALUES ('Toyota', 'Camry', 2022, 25000.00, 'Red');

UPDATE Cars SET Price = 26000.00 WHERE CarID = 1;
