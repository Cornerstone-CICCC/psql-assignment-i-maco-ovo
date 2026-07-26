-- Get enrolled students with class name
SELECT s.name as student_name, s.email, c.name as class_name
FROM students AS s
INNER JOIN classes AS c ON s.class_id = c.id
WHERE s.end_date IS NULL;