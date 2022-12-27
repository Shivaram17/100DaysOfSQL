# Write your MySQL query statement below
# SELECT t.salary as SecondHighestSalary
# FROM (SELECT salary, DENSE_RANK() OVER( ORDER BY salary ASC) AS rk FROM employee) t
# WHERE t.rk = 2;
# SELECT DISTINCT salary AS SecondHighestSalary
# FROM employee
# ORDER BY salary DESC
# LIMIT 1 OFFSET 1;
SELECT MAX(salary) AS SecondHighestSalary
FROM employee
WHERE salary NOT IN (SELECT MAX(salary) FROM  employee);
