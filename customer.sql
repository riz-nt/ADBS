use salesman;
CREATE TABLE customer_sale (
customer_id int primary key not null,
    customer_name VARCHAR(30),
    city VARCHAR(20),
    grade INT,
    salesman_id int,
    foreign	key(salesman_id) references Sales_Man(salesman_id)
    );
    
insert into customer_sale values
(3000, 'Sridhar', "New York", 200, 5006);

select * from customer_sale;
show tables;
