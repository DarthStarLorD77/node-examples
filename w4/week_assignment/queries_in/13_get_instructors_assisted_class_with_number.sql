SELECT DISTINCT instructors.name AS instructor, classes.name AS class, COUNT(assistance_requests.*) AS total_assistances
FROM instructors
INNER JOIN assistance_requests
ON instructor_id = instructors.id
INNER JOIN students
ON student_id = students.id
INNER JOIN classes
ON class_id = classes.id
GROUP BY instructors.name, classes.name
HAVING classes.name = 'JUL02'
ORDER BY instructor;