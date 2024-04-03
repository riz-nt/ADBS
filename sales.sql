create database salesman;
use salesman;
create table SalesMan(
salesman_id int primary key not null,
Name_sales varchar(20),
city varchar(10),
commmission float(4)
);
insert into SalesMan values(5001, 'James Hoog', 'New York', 0.15);
insert into SalesMan values(5002, 'Nail Knite', 'Paris', 0.13);
insert into SalesMan values(5005, 'Pit Alex', 'London', 0.11);
insert into SalesMan values(5006, 'Mc Lyon', 'Parise', 0.14);
insert into SalesMan values(5003, 'Lauson Hen', '', 0.12);
insert into SalesMan values(5007, 'Paul Adam', 'Rome', 0.13);
select name,commission From salesman;
select * from salesman;