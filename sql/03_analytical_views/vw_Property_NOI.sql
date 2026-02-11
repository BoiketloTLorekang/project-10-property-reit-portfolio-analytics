CREATE VIEW vw_Property_NOI AS
SELECT
    pr.PropertyID,
    pr.PropertyName,
    pr.TotalRentalRevenue,
    ISNULL(pm.TotalMaintenanceCost, 0) AS TotalMaintenanceCost,
    pr.TotalRentalRevenue - ISNULL(pm.TotalMaintenanceCost, 0) AS NetOperatingIncome
FROM vw_Property_Revenue pr
LEFT JOIN vw_Property_Maintenance_Cost pm
    ON pr.PropertyID = pm.PropertyID;
