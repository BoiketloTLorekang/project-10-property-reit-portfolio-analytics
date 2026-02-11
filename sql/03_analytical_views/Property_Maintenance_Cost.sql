CREATE VIEW vw_Property_Maintenance_Cost AS
SELECT
    p.PropertyID,
    p.PropertyName,
    SUM(mc.CostAmount) AS TotalMaintenanceCost
FROM Properties p
JOIN MaintenanceRequests mr
    ON p.PropertyID = mr.PropertyID
JOIN MaintenanceCosts mc
    ON mr.RequestID = mc.RequestID
GROUP BY p.PropertyID, p.PropertyName;
