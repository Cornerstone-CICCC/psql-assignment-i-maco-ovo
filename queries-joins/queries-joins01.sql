-- Get Students with Class Name
SELECT s.name as student_name, s.email, c.name as class_name
FROM students AS s
JOIN classes AS c ON s.class_id = c.id;