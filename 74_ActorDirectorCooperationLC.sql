#method 1 using subquery
SELECT actor_id, director_id
FROM (SELECT actor_id, director_id, count(*) as cnt
FROM actordirector_table
GROUP BY actor_id, director_id
WHERE cnt >= 3) as e;

#method 2 using having
SELECT actor_id, director_id
FROM actordirector_table
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;
