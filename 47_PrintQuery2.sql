/*
Enter your query here.
*/
SET @var = 0;
SELECT REPEAT('* ', @var := @var  + 1)
FROM INFORMATION_SCHEMA.TABLES
LIMIT 20;
