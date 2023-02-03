SELECT DISTINCT p.product_name, s.year, s.price
FROM (SELECT DISTINCT product_id, year, price FROM sales) s
INNER JOIN product as p ON p.product_id = s.product_id;
