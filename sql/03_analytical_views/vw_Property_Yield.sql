CREATE VIEW vw_Property_Yield AS
SELECT
    p.PropertyID,
    p.PropertyName,
    n.NetOperatingIncome,
    p.PurchasePrice,
    CAST(
        (n.NetOperatingIncome * 12) / p.PurchasePrice * 100
        AS DECIMAL(6,2)
    ) AS AnnualYieldPercentage
FROM Properties p
JOIN vw_Property_NOI n
    ON p.PropertyID = n.PropertyID;
