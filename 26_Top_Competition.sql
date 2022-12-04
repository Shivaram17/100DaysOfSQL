/*
Enter your query here.
*/
SELECT s.hacker_id, h.name
FROM Submissions s
JOIN Challenges c on s.challenge_id = c.challenge_id
JOIN Difficulty d on c.difficulty_level = d.difficulty_level
JOIN Hackers h on h.hacker_id = s.hacker_id
WHERE s.score = d.score AND d.difficulty_level = c.difficulty_level
GROUP BY s.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC;
