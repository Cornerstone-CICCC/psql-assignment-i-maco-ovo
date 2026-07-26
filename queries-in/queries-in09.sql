-- Get avg total assistance requests class
SELECT avg(total_duration) as avg_total_duration
FROM (
  SELECT classes.name, sum(completed_at - started_at) as total_duration
  FROM assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN classes ON classes.id = students.class_id
  GROUP BY classes.name
) as total_durations;