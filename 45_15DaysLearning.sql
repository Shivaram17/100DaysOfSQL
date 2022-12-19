/*
Enter your query here.
*/
SELECT s1.submission_date, COUNT(DISTINCT hacker_id),
    (SELECT hacker_id FROM submissions s3 WHERE s3.submission_date = s1.submission_date
    GROUP BY hacker_id ORDER BY COUNT(submission_id) DESC, MIN(hacker_id) ASC LIMIT 1) AS      h_id,
    (SELECT h.name FROM hackers h WHERE h.hacker_id = h_id) AS h_name
    FROM submissions s1
    WHERE DATEDIFF(s1.submission_date, '2016-03-01') + 1 =
    (SELECT COUNT(DISTINCT s2.submission_date) FROM submissions s2
    WHERE s2.submission_date <= s1.submission_date AND s2.hacker_id = s1.hacker_id)
    GROUP BY s1.submission_date;
