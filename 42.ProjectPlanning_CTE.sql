/*
Enter your query here.
*/
WITH CTE1 AS (
            SELECT start_date, RANK() OVER(ORDER BY start_date) AS rank_start_date
            FROM PROJECTS
            WHERE start_date NOT IN (SELECT end_date FROM projects)),
    CTE2 AS (SELECT end_date, RANK() OVER(ORDER BY end_date) AS rank_end_date
            FROM PROJECTS
            WHERE end_date NOT IN (SELECT start_date FROM projects))
SELECT start_date, end_date
FROM CTE1, CTE2
WHERE rank_start_date = rank_end_date
ORDER BY DATEDIFF(end_date, start_date), start_date;
