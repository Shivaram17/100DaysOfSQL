/*
Enter your query here.
*/
SELECT H.hacker_id, H.name, count(C.challenge_id) as total_count
FROM Hackers H JOIN Challenges C
ON H.hacker_id = C.hacker_id
GROUP BY H.hacker_id, H.name
having total_count = (
    SELECT  COUNT(temp1.challenge_id) as max_count FROM Challenges temp1
GROUP BY temp1.hacker_id
ORDER BY max_count desc LIMIT  1)
OR total_count in(
    SELECT DISTINCT other_counts FROM(SELECT H2.hacker_id, H2.name, COUNT(C2.challenge_id) as other_counts FROM Hackers H2 JOIN Challenges C2 ON H2.hacker_id = C2.hacker_id
GROUP BY H2.hacker_id, H2.name) temp2
GROUP BY other_counts
HAVING COUNT(other_counts) = 1)
ORDER BY total_count desc, H.hacker_id;
