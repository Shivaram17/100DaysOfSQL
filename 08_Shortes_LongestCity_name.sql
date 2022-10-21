/*
Enter your query here.
*/
(SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY ASC LIMIT 1)
UNION
(SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY 
LENGTH(CITY) DESC, CITY DESC LIMIT 1)
