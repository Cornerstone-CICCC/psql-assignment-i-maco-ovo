-- Get total submissions per class
SELECT c.name AS class_name,
      count(a_s.id) AS total_submissions
FROM classes c
JOIN students s ON c.id = s.class_id
JOIN assignment_submissions a_s ON s.id = a_s.student_id
GROUP BY c.name
ORDER BY total_submissions DESC;