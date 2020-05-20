SELECT
    t2.`Product 1`,
    t2.`product 2`,
    COUNT(t2.p)
FROM
    (
    SELECT DISTINCT
        o1.OrderID AS ID,
        v.VendorID AS Vendor,
        CONCAT(o1.ProductID, '-', o2.ProductID) AS p,
        pr1.Title AS 'Product 1',
        pr2.Title AS 'Product 2'
    FROM
        orderproduct AS o1,
        orderproduct AS o2,
        product AS pr1,
        product AS pr2,
        vendor AS ve,
        vendorproduct AS v,
        (
        SELECT
            o.ID AS oID
        FROM
            `order` AS o
        WHERE
            o.VendorID = 20001
    ) AS t
WHERE
    o1.OrderID = o2.OrderID AND o1.ProductID > o2.ProductID AND t.oID = o1.OrderID AND ve.ID = v.VendorID AND ve.Title = 'pasdaran' AND pr1.ID = o1.ProductID AND pr2.ID = o2.ProductID
) AS t2
GROUP BY
    t2.p
HAVING
    COUNT(t2.p)
ORDER BY
    COUNT(t2.p)
DESC
LIMIT 1