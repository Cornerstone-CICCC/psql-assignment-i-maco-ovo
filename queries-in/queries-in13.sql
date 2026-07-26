-- Get instructors assisted class with number
SELECT instructors.name as instructor, 
        classes.name as class, 
        count(assistance_requests.*) as total_assistances
FROM assistance_requests
JOIN instructors ON instructors.id = instructor_id
JOIN students ON students.id = student_id
JOIN classes ON classes.id = class_id
WHERE classes.name = 'JUL02'
GROUP BY instructors.name, classes.name
ORDER BY instructors.name;