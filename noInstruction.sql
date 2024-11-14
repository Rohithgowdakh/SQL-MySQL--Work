create table students (rollNo int ,studentname varchar(100),emailid varchar(200),branchname varchar(100), location varchar(100));
create table  library (libid int,bookname varchar(100) , authorname varchar(100),rollno int,foreign key (rollNo) references students(rollno));
alter table students modify rollno int primary key;
create table sports (sports_id int,itemname varchar(200),rollno int ,foreign key (rollno) references students(rollno));
drop table library;
drop table students;
desc sports;
insert into students (rollno,studentname,emailid,branchname,location) values 
						(1,'santhosh','santhosh@gss.com','medical','bangalore'),
                        (2,'allan ','allan@outlook.com','mechanical','mysore'),
                        (3,'jones','jones@gmail.com','civil','tumkur'),
                        (4,'adams','adams@yahoo.com','texttile','bellary'),
                        (5,'james','james@gss.com','bsc computers','raichur');
insert into library (libid,bookname,authorname,rollno) values 
						(100,'core java','robert',1),
                        (101,'spring boot ','williams',1),
                        (102,'javascript','jacob',4),
                        (103,'html','jack sparrow',4),
                        (104,'css','thomson',2);
insert into sports (sports_id,itemname,rollno) values 
						(1001,'football',1),
                        (1002,'tennis',2),
                        (1003,'chess',3),
                        (1004,'cricket',3),
                        (1005,'hockey',5);
 select s.studentName , l.bookName from students s inner join library l on s.Rollno=l.Rollno;
 select s.studentName , m.itemname from students s inner join sports m on s.Rollno=m.Rollno;
 select s.studentname, s.emailid, b.bookname from Students s join library b ON s.rollno = b.rollno; 
select s.studentname , l.bookname, p.itemname from students s left join library l on s.rollno=l.rollno right join sports p on s.rollno=p.rollno;
 select s.studentname , l.bookname, p.itemname from students s left join library l on s.rollno=l.rollno left join sports p on s.rollno=p.rollno;
select b.bookname  from library b inner join students s on b.rollno=s.rollno;
 select b.bookname , s.studentname from library b inner join student s on b.rollno=s.rollno;
 select s.studentname, s.emailid, b.bookname from Students s join library b ON s.rollno = b.rollno; 
SELECT s.studentname, l.bookname, null as itemname FROM students s LEFT JOIN library l ON s.rollno = l.rollno 
UNION ALL 
SELECT s.studentname, NULL AS bookname, sp.itemname FROM students s LEFT JOIN sports sp ON s.rollno = sp.rollno;
 select b.bookname , s.itemname from library b cross join sports s ;
 select l.bookname , l.authorname from library l inner join students s on l.rollno = s.rollno where s.branchname='texttile';
 select  s.studentname,p.itemname from students s  inner join sports p on s.rollno=p.rollno where s.emailid like '%gss%';