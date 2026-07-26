
CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE,
  is_active BOOLEAN DEFAULT TRUE
);


CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY,
  assignment_id INTEGER REFERENCES assignments(id),
  student_id INTEGER REFERENCES students(id),
  instructor_id INTEGER REFERENCES instructors(id),
  created_at TIMESTAMP,
  started_at TIMESTAMP,
  completed_at TIMESTAMP,
  student_feedback TEXT,
  instructor_feedback TEXT
);