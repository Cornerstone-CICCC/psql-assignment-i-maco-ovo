-- Get classes more 18 students
SELECT c.name AS class_name, count(s.id) AS total_students
FROM classes c
JOIN students s ON c.id = s.class_id
GROUP BY c.name
HAVING count(s.id) >= 18
ORDER BY total_students ASC;