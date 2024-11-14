create table  Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100));
create table Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id));
create table Tasks (
    task_id INT PRIMARY KEY,
    task_name VARCHAR(100),
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id));
   
INSERT INTO Customers (customer_id, customer_name)
VALUES (2, 'rohith1'),
		(3, 'rohith2'),
        (4, 'rohith3');

INSERT INTO Projects (project_id, project_name, customer_id)
VALUES (2, 'Project2',2),
		(3, 'Project3',3),
        (4, 'Project4',4);
        


INSERT INTO Tasks (task_id, task_name, project_id)
VALUES (2, 'Task2', 2),
		(3, 'Task3', 3),
        (4, 'Task2', 4);
select *from customers;
select *from projects;
select *from tasks;


    