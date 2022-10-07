SELECT classes.name AS class_name, count(*) AS total_students
FROM students
JOIN classes ON classes.id = students.class_id
GROUP BY class_name
HAVING count(*) >= 18
ORDER BY count(*);