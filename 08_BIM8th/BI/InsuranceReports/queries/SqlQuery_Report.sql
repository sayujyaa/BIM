SELECT
    d.MonthName,
    d.YearValue,
    c.CategoryName,
    f.PoliciesCount,
    f.TotalPremium,
    f.SumInsured
FROM FactInsuranceBusiness f
INNER JOIN DimDate d
    ON f.DateID = d.DateID
INNER JOIN DimInsuranceCategory c
    ON f.CategoryID = c.CategoryID;
