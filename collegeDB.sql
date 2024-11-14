create database CollegeDB;
use CollegeDB;
create table  college (
    college_id INT PRIMARY KEY,
    college_name VARCHAR(100));
create table teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(100),
    college_id INT,
    FOREIGN KEY (college_id) REFERENCES college(college_id));
create table subjects (
    sub_id INT PRIMARY KEY,
    sub_name VARCHAR(100),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id));
    
INSERT INTO College (college_id, college_name)
VALUES (2, 'rohith1'),
		(3, 'rohith2'),
        (4, 'rohith3');

INSERT INTO teachers (teacher_id, teacher_name, college_id)
VALUES (2, 'Project2',2),
		(3, 'Project3',3),
        (4, 'Project4',4);
        


INSERT INTO subjects(sub_id, sub_name, teacher_id)
VALUES (2, 'phy', 2),
		(3, 'che', 3),
        (4, 'eng', 4);