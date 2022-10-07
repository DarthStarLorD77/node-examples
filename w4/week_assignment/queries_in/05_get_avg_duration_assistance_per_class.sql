SELECT classes.name AS class, AVG(completed_at-started_at) AS avg_duration_assistance
FROM assistance_requests
JOIN students
ON student_id = students.id
JOIN classes
ON class_id = classes.id
GROUP BY classes.id, classes.name
ORDER BY avg_duration_assistance;