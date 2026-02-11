CREATE TABLE Tenants (
    TenantID INT IDENTITY(1,1) PRIMARY KEY,
    TenantName NVARCHAR(150),
    TenantType NVARCHAR(50), -- Individual / Business
    ContactEmail NVARCHAR(150),
    PhoneNumber NVARCHAR(50)
);
