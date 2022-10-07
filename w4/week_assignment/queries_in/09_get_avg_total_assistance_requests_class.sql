SELECT AVG(total_duration) AS avg_total_duration
FROM (SELECT classes.name AS class, SUM(completed_at-started_at) AS total_duration
FROM assistance_requests
INNER JOIN students
ON student_id = students.id
INNER JOIN classes
ON class_id = classes.id
GROUP BY classes.name
ORDER BY total_duration) as total_duration;