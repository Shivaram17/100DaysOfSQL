SELECT customer_num
FROM (SELECT customer_num, count(*) as cnt FROM orders GROUP BY customer_num) AS o ORDER BY o.cnt LIMIT 1;
