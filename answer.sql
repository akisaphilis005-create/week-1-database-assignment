CREATE DATABASE school_management;
USE school_management;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    enrollment_date DATE
);

CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    subject VARCHAR(100)
);

CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    class_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

INSERT INTO students (name, email, enrollment_date)
VALUES
('Amina Otieno', 'amina@gmail.com', '2026-01-12'),
('Brian Mwangi', 'brian@gmail.com', '2026-01-13');

INSERT INTO teachers (name, subject)
VALUES
('Grace Njeri', 'Mathematics'),
('Peter Kamau', 'English');

INSERT INTO classes (class_name, teacher_id)
VALUES
('Grade 7', 1),
('Grade 8', 2);

INSERT INTO enrollments (student_id, class_id, enrollment_date)
VALUES
(1, 1, '2026-01-12'),
(2, 2, '2026-01-13');

SELECT * FROM students;
SELECT * FROM teachers;
SELECT * FROM classes;
SELECT * FROM enrollments;
