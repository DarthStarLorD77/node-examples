SELECT classes.name AS class_name, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN classes ON classes.id = students.class_id
GROUP BY classes.name
ORDER BY COUNT(assignment_submissions.*) DESC;