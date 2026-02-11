CREATE TABLE LeaseAgreements (
    LeaseID INT IDENTITY(1,1) PRIMARY KEY,
    UnitID INT,
    TenantID INT,
    LeaseStartDate DATE,
    LeaseEndDate DATE,
    MonthlyRent DECIMAL(18,2),
    FOREIGN KEY (UnitID) REFERENCES Units(UnitID),
    FOREIGN KEY (TenantID) REFERENCES Tenants(TenantID)
);
