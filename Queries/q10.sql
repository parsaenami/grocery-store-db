SELECT DISTINCT
    p.Title,
    op.Amount
FROM
    `order` AS o,
    vendor AS v,
    product AS p,
    vendorproduct AS vp,
    orderproduct AS op
WHERE
    o.ID = op.OrderID AND o.VendorId = v.ID AND vp.VendorID = v.ID AND v.Title = 'saadatabad' AND vp.ProductID = op.ProductID AND p.ID = vp.ProductID
ORDER BY
    op.Amount
DESC
LIMIT 2, 1