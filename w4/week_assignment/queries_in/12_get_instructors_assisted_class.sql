SELECT DISTINCT instructors.name AS instructor, classes.name AS class
FROM instructors
INNER JOIN assistance_requests
ON instructor_id = instructors.id
INNER JOIN students
ON student_id = students.id
INNER JOIN classes
ON class_id = classes.id
WHERE classes.name = 'JUL02'
ORDER BY instructor;