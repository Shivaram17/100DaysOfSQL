SELECT name
FROM  employee
WHERE id IN (SELECT manager_id FROM employee GROUP BY managerid HAVING COUNT(*) > 4);
