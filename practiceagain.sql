select user();
create user 'practice' identified by 'root';
select user();
select user from mysql.user;
grant select on *.* to 'practice';
grant all privileges on *.* to 'practice';
create database practice1;
use practice1;
select length('rohith1  1');
create table school(student_id int,teacher varchar(10),student_name varchar(10));
insert into school(student_id ,teacher,student_name ) values
(10,'smith','jhon'),
(20,'manu','rohi'),
(30,'rom','seeth');
insert into school values(40,'rwmwm','jdkjd',02);
select * from school;
alter table school add phone bigint;
alter table school add dob varchar(10) after teacher;
alter table school rename column phone to contactNo;
alter table school modify student_id smallint;
alter table school drop column dob;
rename table college to school;
create table college as select * from school;
drop table college;
update school set teacher='sunn' where student_id=10;
update school set teacher='sunny',student_name='roooo' where student_id=20;
delete from school where student_id=40;
delete from school;