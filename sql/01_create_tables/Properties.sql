CREATE TABLE Properties (
    PropertyID INT IDENTITY(1,1) PRIMARY KEY,
    PropertyName NVARCHAR(150),
    PropertyType NVARCHAR(50), -- Residential, Commercial, Mixed-Use
    LocationID INT,
    ManagerID INT,
    PurchaseDate DATE,
    PurchasePrice DECIMAL(18,2),
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID),
    FOREIGN KEY (ManagerID) REFERENCES PropertyManagers(ManagerID)
);
