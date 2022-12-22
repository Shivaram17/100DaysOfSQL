# Write your MySQL query statement below
# SELECT id, name, 
#             CASE WHEN sex = 'm' THEN 'f' ELSE 'm'
#             END AS sex,
#             salary
# FROM salary;

UPDATE Salary
# SET sex = CASE sex WHEN 'm' THEN 'f' ELSE 'm' END;
SET sex = CASE WHEN sex = 'm' THEN 'f' ELSE 'm' END;
