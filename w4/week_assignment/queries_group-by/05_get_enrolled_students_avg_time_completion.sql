SELECT students.name AS student_name, AVG(assignment_submissions.duration) AS average_time
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY student_name
ORDER BY AVG(assignment_submissions.duration) DESC;