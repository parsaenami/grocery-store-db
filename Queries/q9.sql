SELECT
    t.VendorTitle,
    SUM(t.SumOfSales) AS TotalSum,
    SUM(t.Amount) AS SoledItems,
    SUM(t.SumOfSales) / SUM(t.Amount) AS Average
FROM
    (
    SELECT
        v.Title AS VendorTitle,
        op.Amount,
        (p.Price * op.Amount) AS SumOfSales
    FROM
        product AS p,
        vendorproduct AS vp,
        vendor AS v,
        `order` AS o,
        orderproduct AS op
    WHERE
        o.VenderID = vp.VendorID AND v.ID = vp.VendorID AND op.ProductID = vp.ProductID AND op.OrderID = o.ID AND v.ID = o.VendorID AND p.ID = op.ProductID
) AS t
GROUP BY
    t.VendorTitle
HAVING
    Average > 100000