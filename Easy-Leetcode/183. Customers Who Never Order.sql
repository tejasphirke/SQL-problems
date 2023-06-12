### Solution 1
SELECT c.name as Customers
FROM Customers c 
WHERE c.id NOT IN (SELECT CustomerId FROM Orders)

### Solution 2
SELECT Cu.name as Customers FROM Customers AS Cu
LEFT JOIN Orders ON Orders.customerId = Cu.id
WHERE Orders.id is null;
