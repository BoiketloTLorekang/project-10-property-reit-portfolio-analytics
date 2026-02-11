CREATE TABLE RentPayments (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    LeaseID INT,
    PaymentDate DATE,
    AmountPaid DECIMAL(18,2),
    PaymentStatus NVARCHAR(50), -- Paid, Late, Missed
    FOREIGN KEY (LeaseID) REFERENCES LeaseAgreements(LeaseID)
);
