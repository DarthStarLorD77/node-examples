SELECT students.name AS student_name, email, classes.name AS class_name
FROM students
JOIN classes ON students.class_id = classes.id
WHERE students.end_date IS NULL;