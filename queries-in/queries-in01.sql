--  Get total assistance requests instructor
SELECT count(assistance_requests.*) as total_assistances, instructors.name as instructor_name
FROM assistance_requests
JOIN instructors ON instructors.id = instructor_id
WHERE name = 'Waylon Boehm'
GROUP BY instructors.name;