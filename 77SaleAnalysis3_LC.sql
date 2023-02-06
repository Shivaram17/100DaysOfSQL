SELECT s.product_id, p.product_name
FROM sales
JOIN product p on p.product_id = s.product_id
GROUP BY s_product_id
HAVING MIN(sale_date) >= '2019-01-01' AND MAX(s.sale_date) <= '2019-03-31';
