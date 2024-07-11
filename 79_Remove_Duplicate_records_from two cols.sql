-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.
-- #MySQL 5.7.12
-- #please drop objects you've created at the end of the script 
-- #or check for their existance before creating
-- #'\\' is a delimiter

-- select version() as 'mysql version';

DROP TABLE IF EXISTS yourtable;

CREATE TABLE yourtable
    (`start_from` varchar(9), `end_to` varchar(9), `distance` int);
    
INSERT INTO yourtable
    (`start_from`, `end_to`, `distance`)
VALUES
    ('Chennai', 'Bangalore', 350),
    ('Bangalore', 'Chennai', 350),
    ('Chennai', 'Hyderabad', 350),
    ('Hyderabad', 'Chennai', 510);

SELECT 
CASE WHEN start_from < end_to THEN start_from ELSE end_to END as city1,
CASE WHEN start_from < end_to THEN end_to ELSE start_from END as city2,
distance
FROM yourtable
GROUP BY city1, city2, distance;
