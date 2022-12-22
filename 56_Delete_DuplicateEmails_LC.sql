# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
# DELETE FROM person
# WHERE Id not in (SELECT mini FROM (SELECT  MIN(Id) as mini FROM PERSON GROUP BY email) AS T);

#METHOD 2
# DELETE b
# FROM person a, person b
# WHERE a.email = b.email AND a.id < b.id;

#method 3
DELETE
FROM person
WHERE id in (SELECT r.id FROM
            (SELECT Id, row_number() OVER(PARTITION BY email ORDER BY id ASC) AS rk
            FROM person) AS r WHERE r.rk > 1);
