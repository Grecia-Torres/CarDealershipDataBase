# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          CarDealership                                       #
# ---------------------------------------------------------------------- #
DROP DATABASE IF EXISTS CarDealership;

CREATE DATABASE IF NOT EXISTS CarDealership;

USE CarDealership;

CREATE TABLE Dealerships (
    DealershipID INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(50),
    Address VARCHAR(50),
    Phone VARCHAR(12),
    PRIMARY KEY (DealershipID)
);

CREATE TABLE Vehicles (
    VIN VARCHAR(17) NOT NULL,
    Color VARCHAR(50),
    Make VARCHAR(50),
    Model VARCHAR(50),
    Sold BOOLEAN,
    PRIMARY KEY (VIN)
);
CREATE TABLE Inventory (
    DealershipID INT NOT NULL,
    VIN VARCHAR(17) NOT NULL,
    PRIMARY KEY (DealershipID , VIN)
);

CREATE TABLE SalesContracts (
    ID INT AUTO_INCREMENT,
    SaleDate DATE,
    Price DECIMAL(9 , 2 ),
    VIN VARCHAR(20),
    PRIMARY KEY (ID),
    FOREIGN KEY (VIN)
        REFERENCES Vehicles (VIN)
);

CREATE TABLE LeaseContracts (
    ID INT AUTO_INCREMENT,
    VIN VARCHAR(17) NOT NULL,
    LeaseDate DATE,
    MonthlyPayment DECIMAL(9 , 2 ),
    PRIMARY KEY (ID),
    FOREIGN KEY (VIN)
        REFERENCES Vehicles (VIN)
);

INSERT INTO Dealerships (`Name`, ADDRESS, PHONE) VALUES
('Torres Auto', '223 Long St, San Francisco, CA', '415-551-6678'),
('Mar Auto', '451 Rhine St, San Francisco, CA', '415-442-7778'),
('Towers Auto', '333 Vista St, San Francisco, CA', '415-332-9978'),
('Alex Auto', '545 James St, San Francisco, CA', '415-222-5578');

INSERT INTO Vehicles (VIN, Color, Make, Model, Sold) VALUES
('1HGCM82633A123451','Red','Honda','Fit',FALSE),
('1HGCM82633A123452','Green','Toyota','Camry',TRUE),
('1HGCM82633A123453','Silver','Ford','Bronco',TRUE),
('1HGCM82633A123454','Orange','Honda','Accord',FALSE),
('1HGCM82633A123455','Pink','Kia','Soul',TRUE),
('1HGCM82633A123456','Red','BMW','A9',TRUE),
('1HGCM82633A123457','Blue','Tesla','Model 3',FALSE),
('1HGCM82633A123458','Black','Honda','Civic',TRUE);

INSERT INTO Inventory (DealershipID, VIn) VALUES
(1,'1HGCM82633A123451'),
(2,'1HGCM82633A123452'),
(3,'1HGCM82633A123453'),
(1,'1HGCM82633A123454'),
(2,'1HGCM82633A123455'),
(3,'1HGCM82633A123456'),
(5,'1HGCM82633A123457'),
(4,'1HGCM82633A123458');

INSERT INTO SalesContracts (SaleDate,Price, VIN) VALUES
('2024-01-03', '43000.00', '1HGCM82633A123455'),
('2024-05-13', '3000.00','1HGCM82633A123456'),
('2024-06-24', '24000.00','1HGCM82633A123457'),
('2024-07-15', '55000.00','1HGCM82633A123458');

INSERT INTO LeaseContracts (VIN, LeaseDate, MonthlyPayment) VALUES
('1HGCM82633A123451','2024-08-24','240.00'),
('1HGCM82633A123452','2024-09-12','450.00'),
('1HGCM82633A123453','2024-10-13','550.00'),
('1HGCM82633A123454','2024-11-15','327.00');


