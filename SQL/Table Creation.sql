CREATE TABLE CUSTOMERS(
	customer_id VARCHAR(50) Primary Key,
	customer_name VARCHAR(100),
	segment VARCHAR(50)
);

select * from customers;
select count(*) from customers;


CREATE TABLE LOCATION(
	country VARCHAR(80),
	state VARCHAR(80),
	city VARCHAR(80),
	region VARCHAR(80),
	market VARCHAR(80),
	market2 VARCHAR(80),
	location_id VARCHAR(80) Primary Key
);

select * from location;
select count(*) from location;


create table products(
	product_id varchar(80) Primary Key,
	product_name varchar(200),
	categeory varchar(50),
	sub_category varchar(50)
);

select * from products;
select count(*) from products;


create table shipping(
	ship_mode varchar(50),
	shipping_cost DECIMAL(10,2),
	order_priority varchar(50),
	ship_id varchar(20) Primary key
);

select * from shipping;
select count(*) from shipping;


create table orders(
	order_id varchar(80),
	order_date DATE,
	ship_date DATE,
	year date,
	weeknum int,
	customer_id varchar(50),
	product_id varchar(80),
	location_id varchar(80),
	ship_id varchar(20),
	sales DECIMAL(10,2),
	quantity int,
	discount DECIMAL(10,2),
	profit DECIMAL(10,6)
);

select * from orders;
select count(*) from orders;
