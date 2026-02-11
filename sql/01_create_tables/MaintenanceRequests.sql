CREATE TABLE MaintenanceRequests (
    RequestID INT IDENTITY(1,1) PRIMARY KEY,
    PropertyID INT,
    UnitID INT,
    RequestDate DATE,
    IssueType NVARCHAR(100),
    Status NVARCHAR(50), -- Open, In Progress, Closed
    FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID),
    FOREIGN KEY (UnitID) REFERENCES Units(UnitID)
);
