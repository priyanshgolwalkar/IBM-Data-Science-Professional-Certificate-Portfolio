-- Create Table
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    marks INT
);

-- Insert Data
INSERT INTO students VALUES (1, 'A', 'CSE', 85);
INSERT INTO students VALUES (2, 'B', 'IT', 78);
INSERT INTO students VALUES (3, 'C', 'CSE', 92);
INSERT INTO students VALUES (4, 'D', 'ECE', 74);
INSERT INTO students VALUES (5, 'E', 'IT', 88);

-- Select All
SELECT * FROM students;

-- Filter Records
SELECT * FROM students WHERE marks > 80;

-- Aggregation
SELECT department, AVG(marks) AS avg_marks
FROM students
GROUP BY department;

-- Having Clause
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING COUNT(*) > 1;
