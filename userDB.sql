create table  Users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100));
create table userProfile (
    profile_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id));
create table address (
    profile_id INT,
    street VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    FOREIGN KEY (profile_id) REFERENCES userProfile(profile_id));
    
    
INSERT INTO users (user_id, user_name)
VALUES (2, 'rohith1'),
		(3, 'rohith2'),
        (4, 'rohith3');

INSERT INTO userProfile (profile_id, full_name, user_id)
VALUES (2, 'Project2',2),
		(3, 'Project3',3),
        (4, 'Project4',4);
        


INSERT INTO address (profile_id, street, city,state)
VALUES (2, 'shivanagar','bangalur','karnataka'),
		(3, 'shivanagar1','bangalur1','karnataka1'),
        (4, 'shivanagar2','bangalur2','karnataka2');