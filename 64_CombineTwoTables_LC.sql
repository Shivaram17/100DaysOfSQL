# Write your MySQL query statement below
SELECT firstname, lastname, city, state
FROM person AS p
LEFT JOIN address AS a ON p.personId = a.personId;
