SELECT DISTINCT
    vendor.*,
    COUNT(vendorproduct.ProductID)
FROM
    vendorproduct
NATURAL JOIN vendor WHERE vendor.ID = vendorproduct.VendorID
GROUP BY
    vendorproduct.VendorID
HAVING
    COUNT(vendorproduct.VendorID) > 10