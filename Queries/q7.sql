SELECT DISTINCT
    productID,
    product.Title,
    COUNT(CustomerID)
FROM
    `order`,
    orderproduct,
    product
WHERE
    orderproduct.OrderID = `order`.`ID` AND product.ID = orderproduct.ProductID
GROUP BY
    productID
HAVING
    COUNT(CustomerID) > 10