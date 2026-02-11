CREATE TABLE PropertyValuations (
    ValuationID INT IDENTITY(1,1) PRIMARY KEY,
    PropertyID INT,
    ValuationDate DATE,
    MarketValue DECIMAL(18,2),
    FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID)
);
