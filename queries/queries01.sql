-- Get the students without Github:
SELECT id, name, email, class_id
FROM students
WHERE class_id IS NULL
ORDER BY class_id;