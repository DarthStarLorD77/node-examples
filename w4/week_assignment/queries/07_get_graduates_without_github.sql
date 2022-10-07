SELECT name, email, phone FROM students
WHERE github IS NULL AND NOT end_date IS NULL;