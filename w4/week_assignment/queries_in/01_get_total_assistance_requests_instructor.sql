SELECT COUNT(assistance_requests.*) AS total_assistances, instructors.name AS instructor_name
FROM assistance_requests
INNER JOIN instructors
ON assistance_requests.instructor_id = instructors.id
GROUP BY instructors.name
HAVING instructors.name = 'Waylon Boehm';