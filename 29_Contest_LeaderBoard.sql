/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT h.hacker_id,name, sum(t.maxscore)
FROM Hackers h
INNER JOIN ( SELECT max(score) as maxscore, hacker_id FROM Submissions
           GROUP BY challenge_id, hacker_id) t
           ON h.hacker_id = t.hacker_id
GROUP BY h.hacker_id, h.name
HAVING sum(maxscore) > 0
ORDER BY sum(maxscore) DESC, h.hacker_id ASC;
