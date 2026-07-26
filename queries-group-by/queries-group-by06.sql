-- Get enrolled students average time completion less estimated
SELECT s.name AS student_name, 
       AVG(a_s.duration) AS average_time, 
       AVG(a.duration) AS average_estimated_time
FROM students s
JOIN assignment_submissions a_s ON s.id = a_s.student_id
JOIN assignments a ON a_s.assignment_id = a.id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING AVG(a_s.duration) < AVG(a.duration)
ORDER BY average_time ASC;