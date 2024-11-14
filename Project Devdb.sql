create database Devdb;
use Devdb;
create table  tbl_customers (
    c_id INT unsigned PRIMARY KEY,
    customerName VARCHAR(100) not null,
    description varchar(100));
create table tbl_Project (
    p_id INT unsigned PRIMARY KEY,
    projectName VARCHAR(100) not null,
    description varchar(100),
    c_id INT unsigned,
    FOREIGN KEY (c_id) REFERENCES tbl_Customers(c_id));
create table tbl_ProjectType(
	p_type int unsigned primary key,
    projectType varchar(100) not null,
    description varchar(100),
    p_id int unsigned ,
    foreign key (p_id) references tbl_Project(p_id));
    
