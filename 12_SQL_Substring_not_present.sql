/*
Enter your query here.
*/
SELECT DISTINCT CITY FROM STATION S
WHERE lower(substr(S.CITY, 1,1)) not in ('a', 'e', 'i', 'o', 'u');
