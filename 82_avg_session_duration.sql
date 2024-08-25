//Suppose you have a table 'logins' with columns: user_id, login_time, and logout_time. Write a query to find the average session duration for each user, considering only users who have logged in more than five times.


Solution 1
WITH temp as (
    select *, count(user_id) as cnt
    from logins
    group by user_id
    having cnt >= 5
)

select *,
AVG(TIMESTAMPDIFF(SECOND,logout_time,login_time)) as  session_duration
from temp
group by user_id;


SELECT 
    user_id,
    AVG(TIMESTAMPDIFF(SECOND, login_time, logout_time)) AS avg_session_duration
FROM 
    logins
GROUP BY 
    user_id
HAVING 
    COUNT(user_id) > 5;
