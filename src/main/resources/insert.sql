PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

-- Course sample data.
-- Insert 3 courses.
-- Remember:
-- course_id is a number.
-- course_name must be present.
-- credits must be greater than 0.
-- Hint: INSERT INTO table (columns) VALUES (row 1), (row 2), ...
INSERT INTO courses (course_id, course_name, credits) VALUES
    (1, 'Computer Science', 6),
    (2, 'Mathematics', 5),
    (3, 'Physics', 4);


-- Student sample data.
-- Insert 5 students.
-- Remember:
-- id is a number.
-- name must be present.
-- email must be unique.
-- age must be 18 or older.
-- course_id must exist in the courses table.
INSERT INTO students (id, name, email, age, course_id) VALUES
    (1, 'Ava Johnson', 'ava@example.com', 19, 1),
    (2, 'Liam Smith', 'liam@example.com', 22, 2),
    (3, 'Mia Brown', 'mia@example.com', 20, 1),
    (4, 'Noah Davis', 'noah@example.com', 24, 3),
    (5, 'Emma Wilson', 'emma@example.com', 21, 2);


-- Optional foreign-key error example (uncomment to test).
-- Uncomment this to test a foreign key error.
-- This should fail because course_id 999 does not exist.
-- INSERT INTO students (id, name, email, age, course_id)
-- VALUES (6, 'Invalid Course Student', 'invalid@example.com', 20, 999);
