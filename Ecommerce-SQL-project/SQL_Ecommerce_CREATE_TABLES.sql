USE Ecommerce;

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
    product_id  INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(15,6),
	description VARCHAR(100)
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    order_id   INT PRIMARY KEY,
	customer_id INT,
    order_date DATE,
    total_amount DECIMAL(15,6)
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


DROP TABLE IF EXISTS Order_Details;
CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);




