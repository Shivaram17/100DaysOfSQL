SELECT name
FROM customers
WHERE referee_id IS NULL OR referee_id <> 2;
