SELECT instructors.name AS instructor, 
    students.name AS student, 
    assignments.name AS  assignment, 
    (completed_at-started_at) AS assistance_duration 
FROM assistance_requests
LEFT JOIN instructors
ON instructor_id = instructors.id
LEFT JOIN students
ON student_id = students.id
LEFT JOIN assignments
ON assignment_id = assignments.id
ORDER BY assistance_duration;