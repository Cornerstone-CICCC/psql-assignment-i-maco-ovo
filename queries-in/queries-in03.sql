-- Get data assistance request
SELECT instructors.name as instructor, 
      students.name as student, 
      assignments.name as assignment, 
      (completed_at - started_at) as assistance_duration
FROM assistance_requests
JOIN instructors ON instructors.id = instructor_id
JOIN students ON students.id = student_id
LEFT JOIN assignments ON assignments.id = assignment_id
ORDER BY assistance_duration;