//Here is a simpler SQL query that can find the number of students enrolled each month, including months with zero enrollments:
//sql

SELECT
    DATE_FORMAT(enrollment_date, '%Y-%m') AS enrollment_month,
    COUNT(student_id) AS num_enrollments
FROM
    students
GROUP BY
    enrollment_month
ORDER BY
    enrollment_month;


Solution 1
WITH temp as (SELECT s.student_id, s.month, count(s.student_id)
FROM (SELECT *, MONTH(enrollment_date) as month, YEAR(enrollment_date) as year FROM students) as s
GROUP BY s.month,s.year)
