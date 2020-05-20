SELECT
    T2.VendorTitle,
    T2.ProductTitle,
    T2.ProductID,
    T2.ProductPrice,
    T1.SoldAmount
FROM
    (
        (
        SELECT
            T.VendorTitle, SUM(T.SoldAmount) AS SoldAmount
        FROM
            (
            SELECT DISTINCT
                vendor.Title AS VendorTitle,
                product.ID AS ProductID,
                product.Title AS ProductTitle,
                product.Price AS ProductPrice,
                orderproduct.Amount AS SoldAmount
            FROM
                orderproduct,
                `order`,
                product,
                vendor,
                vendorproduct
            WHERE
                product.ID = orderproduct.ProductId AND orderproduct.OrderID = `order`.`ID` AND vendor.ID = `order`.`VendorID` AND vendorproduct.VendorID = vendor.ID AND vendorproduct.ProductID = orderproduct.ProductID
        ) AS T
    GROUP BY
        T.VendorTitle
    HAVING
        SUM(T.SoldAmount) > 10
    ) AS T1
    ),
    (
    SELECT DISTINCT
        vendor.Title AS VendorTitle,
        product.ID AS ProductID,
        product.Title AS ProductTitle,
        product.Price AS ProductPrice,
        orderproduct.Amount AS SoldAmount
    FROM
        orderproduct,
        `order`,
        product,
        vendor,
        vendorproduct
    WHERE
        product.ID = orderproduct.ProductId AND orderproduct.OrderID = `order`.`ID` AND vendor.ID = `order`.`VendorID` AND vendorproduct.VendorID = vendor.ID AND vendorproduct.ProductID = orderproduct.ProductID
) AS T2
WHERE
    T2.VendorTitle = T1.VendorTitle