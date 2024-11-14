create database test;
use test;
create table persons
			( personID int,
              firstName varchar(255),
			   emailId varchar(255),
               phoneNo int,
               Address varchar(255),
               City varchar(255),
               DOB Date
               );
select *from persons;
insert into persons values
					(12,'rohith','ro@gmail.com',6362,'Bengaluru shivanagar','bengaluru','2002-01-03');
desc persons;
alter table persons modify firstName varchar(255) check(length(firstName)<10);
alter table persons modify personID int unique;
alter table persons modify phoneno bigint;
alter table persons add column country varchar(244);
alter table persons rename column  dob to DateOfBirth;

create table departments
			( department_id int,
			  department_name varchar(50),
              place_name varchar(50)
              );
create table employees
			( employee_number int,
			  employee_name varchar(200),
              job_name varchar(100),
              department_id int,
              salary int);
              
alter table departments modify department_id int primary key;
alter table employees add foreign key (department_id) references departments(department_id) ;
insert into departments values(1,'cse','bengaluru');
insert into employees values(10,'manu','developer',1,10000);
alter table employees modify salary int check(salary>1000);
desc departments;
desc employees;

