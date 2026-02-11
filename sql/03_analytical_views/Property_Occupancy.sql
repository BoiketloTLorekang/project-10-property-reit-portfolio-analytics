CREATE VIEW vw_Property_Occupancy AS
SELECT
    p.PropertyID,
    p.PropertyName,
    COUNT(u.UnitID) AS TotalUnits,
    SUM(CASE WHEN u.IsOccupied = 1 THEN 1 ELSE 0 END) AS OccupiedUnits,
    CAST(
        SUM(CASE WHEN u.IsOccupied = 1 THEN 1 ELSE 0 END) * 100.0 
        / COUNT(u.UnitID)
        AS DECIMAL(5,2)
    ) AS OccupancyRatePercentage
FROM Properties p
JOIN Units u
    ON p.PropertyID = u.PropertyID
GROUP BY p.PropertyID, p.PropertyName;
