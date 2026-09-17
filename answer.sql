-- Week 1 MySQL Database Assignment
-- Topic: School Management System

-- 1. Create the database
CREATE DATABASE school_management;

-- 2. Select the database
USE school_management;

-- 3. Create the Students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    email VARCHAR(100)
);

-- 4. Create the Teachers table
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    subject VARCHAR(100),
    email VARCHAR(100)
);

-- 5. Create the Courses table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- 6. Create the Enrollments table
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- 7. Insert sample students
INSERT INTO students (first_name, last_name, gender, date_of_birth, email)
VALUES
('John', 'baptist', 'Male', '2008-05-12', 'john@example.com'),
('Mary', 'nakale', 'Female', '2009-03-20', 'mary@example.com');

-- 8. Insert sample teachers
INSERT INTO teachers (first_name, last_name, subject, email)
VALUES
('Peter', 'arwoto', 'Mathematics', 'peter@example.com'),
('Grace', 'nakiru', 'English', 'grace@example.com');

-- 9. Insert sample courses
INSERT INTO courses (course_name, teacher_id)
VALUES
('Mathematics', 1),
('English', 2);

-- 10. Insert sample enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2026-09-17'),
(2, 2, '2026-09-17');

-- 11. Display the students
SELECT * FROM students;

-- 12. Display the teachers
SELECT * FROM teachers;

-- 13. Display the courses
SELECT * FROM courses;

-- 14. Display the enrollments
SELECT * FROM enrollments;