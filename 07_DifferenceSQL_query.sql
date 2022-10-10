/*
Enter your query here.
*/
 SELECT (COUNT(CITY) - COUNT(DISTINCT CITY)) Difference
 FROM STATION;
