-- Get instructor assisted class
SELECT DISTINCT instructors.name as instructor, 
                classes.name as class
FROM assistance_requests
JOIN instructors ON instructors.id = instructor_id
JOIN students ON students.id = student_id
JOIN classes ON classes.id = class_id
WHERE classes.name = 'JUL02'
ORDER BY instructors.name;