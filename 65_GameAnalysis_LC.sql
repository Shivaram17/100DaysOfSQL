SELECT player_id, min(event_date) AS first_login
FROM activity
GROUP BY player_id
ORDER BY player_id;

# method 2
SELECT player_id,
  RANK() OVER(PARTITION BY player_id ORDER BY event_date ASC LIMIT 1) AS first_login
  FROM activity;
