PRAGMA foreign_keys = ON;

-- Select all courses.
-- Select all courses.
SELECT * FROM courses ORDER BY course_id;


-- Select all students.
-- Select all students.
SELECT * FROM students ORDER BY id;


-- Select students older than 20.
-- Select students older than 20.
-- Hint: use WHERE.
SELECT * FROM students WHERE age > 20 ORDER BY id;


-- Show each student's course.
-- Show student names together with course names.
-- Show: student name, email, age and course name.
-- Hint: use JOIN ... ON students.course_id = courses.course_id
SELECT students.name, students.email, students.age, courses.course_name
FROM students
JOIN courses ON students.course_id = courses.course_id
ORDER BY students.id;


-- Count students in each course.
-- Count how many students are in each course.
-- Courses with 0 students should also be shown.
-- Hint: use COUNT, LEFT JOIN and GROUP BY.
SELECT courses.course_name, COUNT(students.id) AS student_count
FROM courses
LEFT JOIN students ON students.course_id = courses.course_id
GROUP BY courses.course_id, courses.course_name
ORDER BY courses.course_id;


-- Update and verify the first student's age.
-- Update the first student's age.
-- Then select that student to check the update.
-- Hint: use UPDATE ... SET ... WHERE ...
UPDATE students SET age = 20 WHERE id = 1;
SELECT * FROM students WHERE id = 1;


-- Move the second student to a different course and verify it.
-- Move the second student to a different course.
-- Then check the update using JOIN to show the new course name.
UPDATE students SET course_id = 3 WHERE id = 2;
SELECT students.id, students.name, courses.course_name
FROM students
JOIN courses ON students.course_id = courses.course_id
WHERE students.id = 2;


-- Delete one student.
-- Delete one student.
-- Hint: do not forget the WHERE clause, or every student will be deleted!
DELETE FROM students WHERE id = 5;


-- Show the final student list.
-- Check the final result.
-- Show id, name, email, age and course name for every student, ordered by id.
-- Hint: use JOIN and ORDER BY.
SELECT students.id, students.name, students.email, students.age, courses.course_name
FROM students
JOIN courses ON students.course_id = courses.course_id
ORDER BY students.id;

