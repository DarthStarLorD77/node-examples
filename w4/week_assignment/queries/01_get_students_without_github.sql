SELECT id, name, email, class_id
FROM students
WHERE github IS NULL
ORDER BY class_id