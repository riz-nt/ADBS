use salesman;
create table order_man(
order_no int primary key,
pruc_amt float,
order_date date,
customer_id int,
salesman_id int,
foreign key (customer_id) references customer_sale(customer_id),
foreign key (salesman_id) references SalesMan(salesman_id)
);
insert into order_man values(7001, 150.5, '2016-10-05', 3005, 5002);
select * from order_man;