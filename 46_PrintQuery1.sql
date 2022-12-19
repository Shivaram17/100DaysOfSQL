/*
Enter your query here.
*/
-- DECLARE @var int
-- SELECT @var = 20
-- WHILE @var > 0
-- BEGIN
-- PRINT REPLICATE('* ', @var)
-- SET @var = @var - 1
-- END
SET @no_of_lines = 20 + 1;
SELECT REPEAT('* ',  @no_of_lines := @no_of_lines - 1)
FROM INFORMATION_SCHEMA.TABLES
WHERE @no_of_lines > 0;
