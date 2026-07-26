-- Get total time assignments per class
SELECT c.name AS class_name,
      SUM(a_s.duration) AS total_time
FROM assignment_submissions AS a_s
JOIN students AS s ON s.id = a_s.student_id
JOIN classes AS c ON c.id = s.class_id
WHERE c.name = 'FEB12'
GROUP BY class_name;