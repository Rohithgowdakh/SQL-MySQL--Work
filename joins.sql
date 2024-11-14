create database joinTest;
use joinTest;
create table Person ( P_ID int ,Name varchar(100) not null, Age varchar(100) not null);
drop table address;
create table Address ( Add_ID int ,City varchar(100) not null, Picode bigint not null);
alter table Address rename column Picode to Pincode;
insert into Person (P_ID,Name, Age) values
					(10,'Santosh',22),
                    (20,'Shilpa',18),
                    (30,'Krishna',35),
                    (40,'Vinith',25),
                    (50,'Sahana',18),
                    (60,'Anusha',16);
insert into Address (Add_ID,City, Pincode) values
					(10,'Bangalore',560011),
                    (20,'Kolar',571020),
                    (30,'Mysore',540912),
                    (40,'Bidar',551450);
                    insert into Address (Add_ID,City, Pincode) values
                    (80,'Raichur',584128),
                    (90,'Hubli',5901210);
delete from Address where Add_id=60; 
select*from Person;
select*from Address;
select p.P_ID,p.Name,p.age,a.Add_ID,a.City,a.Pincode from Person p inner join Address a on p.P_ID=a.Add_ID;
select p.P_ID,p.Name,p.age,a.Add_ID,a.City,a.Pincode from Person p left  join Address a on p.P_ID=a.Add_ID;
select p.P_ID,p.Name,p.age,a.Add_ID,a.City,a.Pincode from Person p right  join Address a on p.P_ID=a.Add_ID;
select p.P_ID,p.Name,p.age,a.Add_ID,a.City,a.Pincode from Person p left  join Address a on p.P_ID=a.Add_ID 
						UNION 
select p.P_ID,p.Name,p.age,a.Add_ID,a.City,a.Pincode from Person p right  join Address a on p.P_ID=a.Add_ID;
