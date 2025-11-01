create table customers(
customer_id serial primary key,
customer_name varchar (50),
city varchar(50)
);

select * from customers

insert into customers(customer_id,customer_name,city )
values (1, 'Aarav Mehta', 'Delhi'),
(2, 'Riya Sharma', 'Mumbai' ),
(3, 'Kabir Jain', 'Delhi') ,
(4 ,'Neha Verma', 'Pune');

select * from customers


create table orders(
order_id serial primary key,
customer_id int,
order_date date,
total_amount int,
status varchar (50)
);

select * from orders

insert into orders (order_id , customer_id, order_date ,total_amount, status)
values (1001,1,'2023-06-01',4500, 'Delivered'), 
(1002,1,'2023-06-03', 5200, 'Delivered'), 
(1003,2, '2023-06-02' ,3000,'Delivered'), 
(1004,2,'2023-06-10',3000,'Cancelled'), 
(1005,3,'2023-06-05',5200, 'Delivered '),
(1006,3,'2023-06-06', 7000 ,'Delivered'),
(1007,4,'2023-06-09',4000, 'Delivered');

select * from orders

create table payments(
payment_id varchar,
order_id int,
payment_date date,
payment_amount int); 

select * from payments

insert into payments(payment_id,order_id,payment_date,payment_amount)
values('P01',1001,'2023-06-02',4500), 
('P02',1002,'2023-06-01',5200), 
('P03',1003,'2023-06-05',3000), 
('P04',1006,'2023-06-08',7000),
('P05',1007,'2023-06-10',4000);

select * from payments
