CREATE TABLE MaintenanceCosts (
    CostID INT IDENTITY(1,1) PRIMARY KEY,
    RequestID INT,
    CostAmount DECIMAL(18,2),
    CostDate DATE,
    FOREIGN KEY (RequestID) REFERENCES MaintenanceRequests(RequestID)
);
