create database restaurant;
use restaurant;
	create table tbl
( 
table_ID int, location varchar(255), primary key(table_ID)
);
    create table waiter 
( 
waiter_ID int, name varchar(150), contact_no varchar(10), shift varchar(10),
primary key (waiter_ID)
);
    create table table_order 
( 
order_ID int, date_time datetime, table_ID int, waiter_ID int,
primary key (order_ID), 
foreign key (table_ID) references tbl (table_ID),
foreign key (waiter_ID) references waiter (waiter_ID)
);
	create table customer
(
customer_ID int, name varchar(100), NIC_no varchar(12), contact_no varchar(10),
primary key (customer_ID)
);
	create table reservation
(
reservation_ID int, date_time datetime, no_of_pax int, order_ID int, table_ID int, customer_ID int,
primary key (reservation_ID),
foreign key (order_ID) references table_order (table_ID),
foreign key (table_ID) references tbl (table_ID),
foreign key (customer_ID) references customer (customer_ID)
);
	create table menu
(
menu_ID int, description varchar(255), availability int,
primary key (menu_ID)
);
	create table menu_item
(
menu_item_ID int, description varchar(255), price float, availability int, menu_ID int,
primary key (menu_item_ID),
foreign key (menu_ID) references menu (menu_ID)
);
	create table order_menu_item 
    (
    order_ID int, menu_item_ID int, quantity int,
    primary key (order_ID, menu_item_ID),
    foreign key (order_ID) references table_order (order_ID),
    foreign key (menu_item_ID) references menu_item (menu_item_ID)
    );
    
show tables;
select * from information_name.columns where table_schema="restaurant";