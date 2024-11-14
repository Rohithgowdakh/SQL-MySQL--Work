create database StudentDB;
use StudentDB;
create table  students (
    stud_id INT PRIMARY KEY,
    stud_name VARCHAR(100));
create table sports (
    sport_id INT PRIMARY KEY,
    sport_name VARCHAR(100),
    stud_id INT,
    FOREIGN KEY (stud_id) REFERENCES students(stud_id));
    
create table  items(
    task_id INT PRIMARY KEY,
    task_name VARCHAR(100),
    sport_id INT,
    FOREIGN KEY (sport_id) REFERENCES sports(sport_id));
    alter table items rename column task_id to item_id;
    alter table items rename column task_name to item_name;
create table  library1 (
    lib_id INT PRIMARY KEY,
    lib_name VARCHAR(100),
      stud_id INT,
    FOREIGN KEY (stud_id) REFERENCES students(stud_id));
create table books (
    book_id INT PRIMARY KEY,
    book_name VARCHAR(100),
    lib_id INT,
    FOREIGN KEY (lib_id) REFERENCES library1(lib_id));
create table phyDept (
    phy_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    stud_id INT,
    FOREIGN KEY (stud_id) REFERENCES students(stud_id));
    alter table phyDept rename column phy_name to course_name;
    
create table compDept (
    cse_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    stud_id INT,
    FOREIGN KEY (stud_id) REFERENCES students(stud_id));
    
INSERT INTO students (stud_id, stud_name)
VALUES (2, 'rohith1'),
		(3, 'rohith2'),
        (4, 'rohith3');

INSERT INTO sports (sport_id, sport_name, stud_id)
VALUES (2, 'Project2',2),
		(3, 'Project3',3),
        (4, 'Project4',4);
        


INSERT INTO items(item_id, item_name, sport_id)
VALUES (2, 'phy', 2),
		(3, 'che', 3),
        (4, 'eng', 4);
        
INSERT INTO library1 (lib_id, lib_name,stud_id)
VALUES (2, 'rohith1',2),
		(3, 'rohith2',3),
        (4, 'rohith3',4);

INSERT INTO books (book_id, book_name, stud_id)
VALUES (2, 'book2',2),
		(3, 'book3',3),
        (4, 'book4',4);
        


INSERT INTO phyDept(phy_id, course_name, stud_id)
VALUES (2, 'phy', 2),
		(3, 'phy1', 3),
        (4, 'phy2', 4);
        
INSERT INTO compDept(cse_id, course_name, stud_id)
VALUES (2, 'com', 2),
		(3, 'com1', 3),
        (4, 'com2', 4);