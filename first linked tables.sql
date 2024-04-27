create database shopping_card_db;
use shopping_card_db;
create table customer(
customer_ID int,
name varchar(100),
address varchar(255),
email varchar(100),
phone varchar(10),
primary key(customer_ID));

create table product (
product_ID int, 
name varchar(100),
price numeric(8,2),
description varchar(255),
primary key (product_ID)
); 

create table card_order(
order_ID int, 
customer_ID int,
product_ID int, 
quantity int, 
order_date date,
status varchar(100),
primary key (order_ID), 
foreign key (customer_ID) references customer(customer_ID),
foreign key (product_ID) references product(product_ID)
);
show tables;