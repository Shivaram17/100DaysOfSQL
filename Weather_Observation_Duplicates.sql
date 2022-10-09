/*
Enter your query here.
*/
-- WITH CTE AS (
--     SELECT CITY
--     ROW_NUMBER() OVER (ORDER BY CITY) row_num
--     FROM STATION S
--     WHERE S.ID%2 =0
-- )
-- DELETE FROM CTE
-- WHERE row_num > 1;
SELECT DISTINCT CITY
FROM STATION S
WHERE S.ID%2=0;
