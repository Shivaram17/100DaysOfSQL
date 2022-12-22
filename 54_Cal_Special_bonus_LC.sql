# Write your MySQL query statement below
# SELECT employee_id, IF((employee_id%2 != 0 and name NOT LIKE 'M%'), salary, 0) AS bonus
# FROM employees;

#method 2
SELECT employee_id,
        CASE WHEN employee_id%2 <> 0 AND name NOT LIKE 'M%' THEN salary ELSE 0
        END AS bonus
FROM employees
ORDER BY employee_id;
