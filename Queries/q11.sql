SELECT DISTINCT
    c.FirstName,
    c.LastName
FROM
    `order` AS o,
    customer AS c
WHERE
    o.CustomerID = c.ID AND NOT IN(
    SELECT
        CustomerID
    FROM
        `order`
    WHERE
        CreatedAt >= 11
)