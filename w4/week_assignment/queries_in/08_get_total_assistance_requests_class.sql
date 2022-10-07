SELECT classes.name AS class, SUM(completed_at-started_at) AS total_duration
FROM assistance_requests
INNER JOIN students
ON assistance_requests.student_id = students.id
INNER JOIN classes
ON students.class_id = classes.id
GROUP BY classes.id, classes.name
ORDER BY total_duration;