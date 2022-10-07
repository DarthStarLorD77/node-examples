SELECT classes.name AS class_name ,SUM(assignment_submissions.duration) AS total_time
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
JOIN classes ON students.class_id = classes.id
GROUP BY classes.name
HAVING classes.name = 'FEB12';