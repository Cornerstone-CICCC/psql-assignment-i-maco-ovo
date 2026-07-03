-- Total students first 3 classes:
SELECT COUNT(id) AS total_students
FROM students
WHERE class_id <= 3;