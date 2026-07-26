-- Get avg duration assistance per class
SELECT classes.name as "class", avg(completed_at - started_at) as avg_duration_assistance
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN classes ON classes.id = students.class_id
GROUP BY classes.name
ORDER BY avg_duration_assistance;