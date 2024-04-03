use salesman;
create table Sales_Man(
salesman_id int primary key not null,
Name_sales varchar(20),
city varchar(10),
commmission float(4)
);
insert into Sales_Man values(5001, 'James Hoog', 'New York', 0.15);
insert into Sales_Man values(5002, 'Nail Knite', 'Paris', 0.13);
insert into Sales_Man values(5005, 'Pit Alex', 'London', 0.11);
insert into Sales_Man values(5006, 'Mc Lyon', 'Parise', 0.14);
insert into Sales_Man values(5003, 'Lauson Hen', '', 0.12);
insert into Sales_Man values(5007, 'Paul Adam', 'Rome', 0.13);
select Name_sales,commmission From Sales_Man;
select Name_sales,city From Sales_Man where city ='Parise';
select distinct salesman_id From order_man;
select * from customer_sale where grade = 200;
select order_no,order_date from order_man where salesman_id=5002;
select * from Sales_Man;