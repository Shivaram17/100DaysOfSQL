# Write your MySQL query statement below
SELECT d.name as Department, e.name as Employee, e.Salary as Salary
FROM employee as e
JOIN Department as d ON e.departmentId = d.id
WHERE e.salary = (SELECT max(salary) FROM employee as e2 WHERE e.departmentId = e2.departmentId);

#method 2
# SELECT d.name as Department, e.name as Employee, MAX(salary) OVER (PARTITION BY d.name ORDER BY salary) as Salary
# FROM employee as e
# JOIN Department as d ON d.id = e.departmentId;
