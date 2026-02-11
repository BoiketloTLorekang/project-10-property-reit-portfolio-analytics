CREATE TABLE Units (
    UnitID INT IDENTITY(1,1) PRIMARY KEY,
    PropertyID INT,
    UnitNumber NVARCHAR(50),
    UnitType NVARCHAR(50), -- Studio, 1-Bed, Office, Retail
    MonthlyRent DECIMAL(18,2),
    IsOccupied BIT,
    FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID)
);
