SELECT students.name AS student_name, AVG(assignment_submissions.duration) AS average_time, AVG(assignments.duration) AS average_estimated_time
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL
GROUP BY student_name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration);