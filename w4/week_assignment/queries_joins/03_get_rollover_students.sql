SELECT 
    students.name AS student_name, 
    classes.name AS class_name, 
    students.start_date AS student_start_date, 
    classes.start_date AS class_start_date 
FROM students
JOIN classes ON students.class_id = classes.id
WHERE students.start_date < classes.start_date
ORDER BY classes.start_date;