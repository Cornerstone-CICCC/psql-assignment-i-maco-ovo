-- Get enrolled students average time completion
SELECT s.name AS student_name, AVG(a_s.duration) AS average_time
FROM students s
JOIN assignment_submissions a_s ON s.id = a_s.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY average_time DESC;