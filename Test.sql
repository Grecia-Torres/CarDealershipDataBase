-- 1 Get all dealerships
SELECT 
    *
FROM
    Dealerships;

-- 2
SELECT 
    Vehicles.*, `Name`
FROM
    Inventory
        INNER JOIN
    Vehicles ON Inventory.VIN = Vehicles.VIN
        INNER JOIN
    Dealerships ON Inventory.DealershipID = Dealerships.DealershipID
WHERE
    Inventory.DealershipID = '2';

-- 3
SELECT 
    *
FROM
    Vehicles
WHERE
    VIN = '1HGCM82633A123452';

-- 4
SELECT 
    `Name`, Address
FROM
    Dealerships
        INNER JOIN
    Inventory ON Dealerships.DealershipID = Inventory.DealershipID
WHERE
    Inventory.VIN = '1HGCM82633A123454';

-- 5
SELECT 
    `Name`, Color, Make, Model
FROM
    Dealerships
        INNER JOIN
    Inventory ON Dealerships.DealershipID = Inventory.DealershipID
        INNER JOIN
    Vehicles ON Inventory.VIN = Vehicles.VIN
WHERE
    Vehicles.Color = 'Red'
        AND Vehicles.Make = 'Honda'
        AND Vehicles.Model = 'Fit';

-- 6
SELECT 
    `Name`, SalesContracts.*
FROM
    SalesContracts
        INNER JOIN
    Inventory ON SalesContracts.VIN = Inventory.VIN
        INNER JOIN
    Dealerships ON Inventory.DealershipID = Dealerships.DealershipID
WHERE
    Dealerships.DealershipID = '1'
        AND SalesContracts.SaleDate BETWEEN '2024-01-01' AND '2024-11-28';

