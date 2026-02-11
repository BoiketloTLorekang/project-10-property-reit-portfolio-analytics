CREATE VIEW vw_Vacancy_Loss AS
SELECT
    p.PropertyID,
    p.PropertyName,
    SUM(
        CASE 
            WHEN u.IsOccupied = 0 THEN u.MonthlyRent
            ELSE 0
        END
    ) AS MonthlyVacancyLoss
FROM Properties p
JOIN Units u
    ON p.PropertyID = u.PropertyID
GROUP BY p.PropertyID, p.PropertyName;
