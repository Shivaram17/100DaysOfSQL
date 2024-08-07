-- /*
-- CoderPad provides a basic SQL sandbox with the following schema.
-- You can also use commands like `show tables` and `desc employees`

-- employees                             projects
-- +---------------+---------+           +---------------+---------+
-- | id            | int     |<----+  +->| id            | int     |
-- | first_name    | varchar |     |  |  | title         | varchar |
-- | last_name     | varchar |     |  |  | start_date    | date    |
-- | salary        | int     |     |  |  | end_date      | date    |
-- | department_id | int     |--+  |  |  | budget        | int     |
-- +---------------+---------+  |  |  |  +---------------+---------+
--                              |  |  |
-- departments                  |  |  |  employees_projects
-- +---------------+---------+  |  |  |  +---------------+---------+
-- | id            | int     |<-+  |  +--| project_id    | int     |
-- | name          | varchar |     +-----| employee_id   | int     |
-- +---------------+---------+    --+

-- -- 1.write query department wise second highest salary in sql get the all column names



SELECT first_name, last_name, department_id,salary,name,salary_rank
FROM (SELECT e.first_name, e.last_name, e.salary, e.department_id,d.name,
DENSE_RANK() OVER (PARTITION BY e.department_id ORDER BY e.salary desc) AS salary_rank
FROM employees e
LEFT JOIN departments d ON e.department_id = d.id) as temp
WHERE salary_rank = 2;
