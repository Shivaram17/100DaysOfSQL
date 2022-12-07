/*
Enter your query here.
*/
SELECT Name
FROM STUDENTS
WHERE MARKS > 75
ORDER BY SUBSTR(Name, -3), ID ASC; 
