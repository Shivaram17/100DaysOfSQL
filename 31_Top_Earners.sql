/*
Enter your query here.
*/
SELECT max(months*salary) total_salary, COUNT(*)
FROM Employee
WHERE (months*salary) = (SELECT max(months*salary) FROM Employee);
