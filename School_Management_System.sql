create database schoolProj;
use schoolProj;
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(100),
    subject_taught VARCHAR(100)
);

CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(100),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    date_of_birth DATE,
    address VARCHAR(255),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);


CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    attendance_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade FLOAT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
INSERT INTO Teachers (teacher_id, teacher_name, subject_taught)
VALUES (1, 'Mr. Johnson', 'Mathematics'),
       (2, 'Ms. Brown', 'Science');
INSERT INTO Teachers (teacher_id, teacher_name, subject_taught)
VALUES (3, 'Mr. Santhosh', 'Physics'),
       (4, 'Ms. Tejaswini', 'Chemistry'),
       (5, 'Mr. Tejaswi', 'Computer Science'),
       (6, 'Ms. Sowmya', 'English');

INSERT INTO Classes (class_id, class_name, teacher_id)
VALUES (1, 'Grade 10', 1),
       (2, 'Grade 11', 2);
INSERT INTO Classes (class_id, class_name, teacher_id)
VALUES (6, 'Grade 06', 6),
       (7, 'Grade 07', 2),
       (3, 'Grade 08', 3),
       (4, 'Grade 09', 4),
       (5, 'Grade 12', 5);
      
       
INSERT INTO Students (student_id, student_name, date_of_birth, address, class_id)
VALUES (1, 'John Doe', '2005-08-15', '123 Main St, Anytown', 1),
       (2, 'Jane Smith', '2006-03-20', '456 Elm St, Anytown', 1);
INSERT INTO Students (student_id, student_name, date_of_birth, address, class_id)
VALUES (3, 'Rohith', '2003-08-11', 'Bengaluru', 2),
       (4, 'Manu', '2002-03-01', 'Nelamangala', 2),
	   (5, 'Bharath', '2003-01-11', 'Hassan', 3),
       (6, 'Sagar', '2002-09-19', 'Belur', 3),
       (7, 'Nandan', '2003-05-18', 'Mandya', 5),
       (8, 'Keetrhi', '2002-11-21', 'Belagavi', 6);

INSERT INTO Courses (course_id, course_name, class_id)
VALUES (1, 'Mathematics 101', 1),
       (2, 'Biology 101', 2);
INSERT INTO Courses (course_id, course_name, class_id)
VALUES (3, 'Science 111', 3),
       (4, 'Computer 101', 4),
       (5, 'Physics 111', 5),
       (6, 'FullStack 101', 5),
       (7, 'DataScience 111', 6),
       (8, 'Chemistry 101', 6);

INSERT INTO Attendance (attendance_id, student_id, course_id, attendance_date, status)
VALUES (1, 1, 1, '2024-06-01', 'Present'),
       (2, 2, 2, '2024-06-01', 'Absent');
INSERT INTO Attendance (attendance_id, student_id, course_id, attendance_date, status)
VALUES (3, 3, 3, '2024-06-01', 'Present'),
       (4, 4, 4, '2024-06-01', 'Present'),
       (5, 5, 5, '2024-06-01', 'Present'),
       (6, 6, 6, '2024-06-01', 'Absent'),
       (7, 7, 7, '2024-06-01', 'Present'),
       (8, 8, 8, '2024-06-01', 'Absent');

INSERT INTO Grades (grade_id, student_id, course_id, grade)
VALUES (1, 1, 1, 85),
       (2, 2, 2, 78);
INSERT INTO Grades (grade_id, student_id, course_id, grade)
VALUES(3, 3, 3, 76),
       (4, 4, 4, 77),
       (5, 5, 5, 81),
       (6, 6, 6, 88),
       (7, 7, 7, 90),
       (8, 8, 8, 91);
select*from Teachers;
select*from Classes;
select*from Students;
select*from Courses;
select*from Attendance;
select*from Grades;