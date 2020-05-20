SELECT DISTINCT
    customer.FirstName,
    customer.LastName
FROM
    (
    SELECT DISTINCT
        op1.OrderID AS op1id,
        op2.OrderID AS op2id
    FROM
        orderproduct AS op1,
        orderproduct AS op2
    WHERE
        op1.ProductID = op2.ProductID AND op1.OrderID > op2.OrderID
) AS t1,
`order`,
customer
WHERE
    (
        `order`.`ID` = t1.op1id OR `order`.`ID` = t1.op2id
    ) AND `order`.`CustomerID` = customer.ID