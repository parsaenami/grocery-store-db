SELECT DISTINCT
    customer.*,
    `order`.`PaymentType`
FROM
    customer,
    `order`
WHERE
    customer.ID = `order`.`CustomerID` AND `order`.`PaymentType` = 'atm'