SELECT firstname, salary 
FROM (SELECT firstname, salary, DENSE_RANK() OVER(ORDER BY salary DESC) AS sal_rank
      FROM employees)
WHERE sal_rank = n; 
