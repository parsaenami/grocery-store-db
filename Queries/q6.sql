SELECT DISTINCT
    customer.ID,
    customer.FirstName,
    customer.LastName,
    customer.Address
FROM
    `order`.`CustomerID` = customer.ID AND `order`.`DeliveryAddress` = customer.Address