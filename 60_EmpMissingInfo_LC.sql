# Write your MySQL query statement below
SELECT e.employee_id
FROM employees e
WHERE e.employee_id not in (SELECT employee_id FROM salaries)
UNION
SELECT s.employee_id
FROM salaries s
WHERE s.employee_id not in (SELECT employee_id FROM employees)
ORDER BY employee_id;
