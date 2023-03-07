CREATE 	DATABASE IF NOT EXISTS MARKET ;

CREATE TABLE IF NOT EXISTS  customers (
     customer_id INT primary key ,
	 customer_name varchar (255) default null,
     phone varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INT primary key,
    order_date date NOT NULL,
    customer_id INT, 
    constraint fk_orders foreign key (customer_id) references customers(customer_id)
);

CREATE TABLE IF NOT EXISTS products (
    product_id INT primary key,
    category varchar (255) NOT NULL default "food", 
    order_id INT ,
    foreign key (order_id) references orders (order_id) 
);