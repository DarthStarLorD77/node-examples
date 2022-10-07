SELECT assignments.id AS id,
assignments.day AS day,
assignments.chapter AS chapter,
    assignments.name AS name, 
    COUNT(assistance_requests.*) AS total_assistances
FROM assistance_requests
INNER JOIN assignments
ON assignment_id = assignments.id
GROUP BY assignments.id, assignments.day, assignments.chapter, assignments.name
ORDER BY total_assistances DESC;