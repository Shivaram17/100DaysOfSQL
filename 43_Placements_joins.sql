/*
Enter your query here.
*/
SELECT name
FROM students s
JOIN friends f ON s.id = f.id
JOIN packages p ON p.id = s.id
JOIN packages p2 ON p2.id = f.friend_id
WHERE p2.salary > p.salary
ORDER BY p2.salary;
