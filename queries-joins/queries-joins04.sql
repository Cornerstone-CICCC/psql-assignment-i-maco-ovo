-- Get total time assignments per student
SELECT s.name AS student_name,
SUM(a_s.duration) AS total_time
FROM assignment_submissions AS a_s
JOIN students AS s ON s.id = a_s.student_id
WHERE s.name = 'Ibrahim Schimmel'
GROUP BY s.name;