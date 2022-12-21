# Write your MySQL query statement below
# SELECT c.name as Customers
# FROM customers as c
# LEFT JOIN orders as o ON c.id = o.customerId
# WHERE o.id IS null;
SELECT name as Customers
FROM Customers
WHERE id NOT IN(SELECT CustomerId FROM orders);
