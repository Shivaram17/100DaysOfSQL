/*
Enter your query here.
Combine two tables
*/
SELECT firstName, lastName, city, state
FROM Person as p LEFT JOIN Address as a on p.PersonId == a.PersonId; 
