SELECT students.name AS student_name, SUM(assignment_submissions.duration) AS total_time
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
GROUP BY students.name
HAVING students.name = 'Ibrahim Schimmel';