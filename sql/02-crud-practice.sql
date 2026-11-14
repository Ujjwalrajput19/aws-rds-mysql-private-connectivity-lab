-- Follow-on CRUD practice for cloud_lab.students.
-- Run after sql/01-create-schema.sql. Re-running INSERT adds duplicate sample rows.
USE cloud_lab;
INSERT INTO students (name, course, age) VALUES
    ('Ujjwal', 'MCA', 23), ('Rahul', 'BCA', 22), ('Amit', 'MCA', 24),
    ('Priya', 'BSc', 21), ('Sneha', 'MCA', 22);
SELECT * FROM students;
SELECT name, course FROM students;
SELECT * FROM students WHERE course = 'MCA';
SELECT * FROM students WHERE age > 22;
SELECT * FROM students ORDER BY age DESC;
SELECT * FROM students WHERE name = 'Rahul' AND course = 'BCA';
UPDATE students SET age = 23 WHERE name = 'Rahul' AND course = 'BCA' LIMIT 1;
SELECT * FROM students WHERE name = 'Sneha' AND course = 'MCA';
DELETE FROM students WHERE name = 'Sneha' AND course = 'MCA' LIMIT 1;
SELECT COUNT(*) AS total_students FROM students;
SELECT AVG(age) AS average_age FROM students;
SELECT MAX(age) AS maximum_age FROM students;
SELECT course, COUNT(*) AS total FROM students GROUP BY course;
SELECT * FROM students ORDER BY id;
