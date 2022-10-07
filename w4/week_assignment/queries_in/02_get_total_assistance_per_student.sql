SELECT COUNT(assistance_requests.*) AS total_assistances, students.name AS student_name
FROM assistance_requests
INNER JOIN students
ON assistance_requests.student_id = students.id
GROUP BY students.name
HAVING students.name = 'Elliot Dickinson';