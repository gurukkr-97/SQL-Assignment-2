create database ezcart;
use ezcart;
create table Customers (CustomerID int primary key auto_increment, 
CustomerName varchar(50) not null, 
Email varchar(50) unique not null, 
Location varchar(30),
Ph_no bigint unique);
alter table customers modify column Email varchar (50) unique;
select * from customers; 
insert into customers (customername,email,location,ph_no) 
values ("Haris","harris15@ez.com","Chennai",9845135747),
("Santhosh Narayanan","sana54@ez.com","Trichy",9954278220),
("MS Viswanathan","msv1988@ez.com","Coimbatore",9632145872),
("Yuvan","ysr52@ez.com","Dindugal",9687451234),
("Sean roldan","seanrol97@ez.com","Chennai",9587412635),
("Thaman","Thams47@ez.com","Bangalore",9214687135),
("AR Rahaman","arr93@ez.com","Theni",9742315684),
("Sam CS","samcs42@ez.com","Chennai",9541236785),
("Ilaiyaraja","mastero65@ez.com","Madurai",9842165483),
("Anirudh","anirockz@ez.com","Chennai",9641258746);
insert into customers (customername,location,ph_no) values ("Thavaseli","Bangalore",9211687135),
("AR Abdul","Theni",9541266785),
("Samuel raja","Chennai",9541260785);
insert into customers (customername,location) values ("Yurajan","Dindugal"),
("Seandan rock","Chennai"),
("Thagam","Bangalore");

select * from customers;
create table Orders  ( OrderID int primary key auto_increment,
OrderDate date not null, product_name varchar (50), product_qty int, Amount decimal (15,2) check ( amount>0),
CustomerID int, foreign key (CustomerID) references customers (CustomerID));
INSERT INTO Orders (OrderDate, product_name, product_qty, Amount, CustomerID) VALUES
('2026-01-02', 'Wireless Mouse', 2, 50.00, 1),
('2026-01-05', 'Mechanical Keyboard', 1, 120.00, 2),
('2026-01-06', 'Leather Wallet', 1, 45.00, 3),
('2026-01-10', 'Wireless Mouse', 1, 25.00, 1), -- Repeated Customer 1
('2026-01-12', 'USB-C Cable', 3, 45.00, 4),
('2026-01-15', 'Bluetooth Speaker', 1, 89.99, 5),
('2026-01-18', 'Gaming Headset', 1, 75.00, 2), -- Repeated Customer 2
('2026-01-20', 'Laptop Stand', 1, 35.00, 6),
('2026-01-22', 'Running Shoes', 1, 110.00, 7),
('2026-01-25', 'Water Bottle', 2, 30.00, 3), -- Repeated Customer 3
('2026-02-01', 'Coffee Mug', 4, 40.00, 8),
('2026-02-03', 'Desk Mat', 1, 25.00, 4), -- Repeated Customer 4
('2026-02-05', 'Smartphone Case', 1, 19.99, 9),
('2026-02-08', 'Mechanical Keyboard', 1, 120.00, 1), -- Repeated Customer 1
('2026-02-10', 'LED Desk Lamp', 1, 45.50, 5), -- Repeated Customer 5
('2026-02-14', 'External Hard Drive', 1, 95.00, 6), -- Repeated Customer 6
('2026-02-16', 'USB-C Cable', 2, 30.00, 2), -- Repeated Customer 2
('2026-02-18', 'Yoga Mat', 1, 40.00, 7), -- Repeated Customer 7
('2026-02-22', 'Backpack', 1, 65.00, 8), -- Repeated Customer 8
('2026-02-25', 'Bluetooth Speaker', 2, 179.98, 9), -- Repeated Customer 9
('2026-03-01', 'Wireless Earbuds', 1, 59.99, 1), -- Repeated Customer 1
('2026-03-03', 'Leather Wallet', 1, 45.00, 5), -- Repeated Customer 5
('2026-03-05', 'HDMI Cable', 2, 20.00, 4), -- Repeated Customer 4
('2026-03-08', 'Laptop Stand', 1, 35.00, 3), -- Repeated Customer 3
('2026-03-12', 'Running Shoes', 1, 110.00, 6), -- Repeated Customer 6
('2026-03-15', 'Water Bottle', 1, 15.00, 2), -- Repeated Customer 2
('2026-03-19', 'Gaming Headset', 1, 75.00, 7), -- Repeated Customer 7
('2026-03-22', 'Desk Mat', 2, 50.00, 8), -- Repeated Customer 8
('2026-03-26', 'Coffee Mug', 1, 10.00, 9), -- Repeated Customer 9
('2026-03-30', 'External Hard Drive', 1, 95.00, 1); -- Repeated Customer 1
select * from orders;



select * from Customers  where Location = "Chennai";
select * from customers where customername like "a%";
select * from customers where customername like "s%";
select * from customers where customername like "%n";
select * from customers where customername like "_a%";
select * from customers order by customername desc;
select * from orders order by orderdate asc;
select distinct Location from customers order by Location;
select sum(amount), min(amount), max(amount) from orders;

select customername,
coalesce ( Ph_no, email, "no Contact") as contact from customers;
-- select nullif(email, "") as mailid from customers;

select * from customers as c inner join orders as o on c.customerID=o.customerID;
select * from customers as c left outer join orders as o on c.customerID=o.customerID;
select * from customers as c right outer join orders as o on c.customerID=o.customerID;
select * from orders cross join customers;







