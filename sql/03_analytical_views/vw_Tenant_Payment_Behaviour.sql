CREATE VIEW vw_Tenant_Payment_Behavior AS
SELECT
    t.TenantID,
    t.TenantName,
    COUNT(rp.PaymentID) AS TotalPayments,
    SUM(CASE WHEN rp.PaymentStatus = 'Late' THEN 1 ELSE 0 END) AS LatePayments
FROM Tenants t
JOIN LeaseAgreements l
    ON t.TenantID = l.TenantID
JOIN RentPayments rp
    ON l.LeaseID = rp.LeaseID
GROUP BY t.TenantID, t.TenantName;
