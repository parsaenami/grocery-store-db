SELECT DISTINCT
    customer.FirstName,
    customer.LastName,
    customer.ID AS CustomerID,
    o2.CreatedAt AS MONTH
FROM
    `order` AS o1,
    `order` AS o2,
    customer
WHERE
    o1.customerID = o2.customerID AND o1.VenderID = o2.VenderID AND(o2.CreatedAt - o1.CreatedAt) = 0 AND customer.ID = o2.customerID