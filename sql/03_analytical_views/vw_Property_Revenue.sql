CREATE VIEW dbo.vw_Property_Revenue AS
SELECT
    p.PropertyID,
    p.PropertyName,
    SUM(rp.AmountPaid) AS TotalRentalRevenue
FROM dbo.Properties p
JOIN dbo.Units u
    ON p.PropertyID = u.PropertyID
JOIN dbo.LeaseAgreements l
    ON u.UnitID = l.UnitID
JOIN dbo.RentPayments rp
    ON l.LeaseID = rp.LeaseID
WHERE rp.PaymentStatus = 'Paid'
GROUP BY p.PropertyID, p.PropertyName;
