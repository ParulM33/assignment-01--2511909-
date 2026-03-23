-- Customers
CREATE TABLE customers (customer_id INT PRIMARY KEY, customer_name VARCHAR(100), city VARCHAR(50));
INSERT INTO customers VALUES (1,'Amit','Mumbai'),(2,'Priya','Delhi'),(3,'Rahul','Mumbai'),(4,'Sneha','Bangalore'),(5,'Arjun','Mumbai');

-- Products
CREATE TABLE products (product_id INT PRIMARY KEY, product_name VARCHAR(100), price DECIMAL);
INSERT INTO products VALUES (1,'Laptop',50000),(2,'Mobile',20000),(3,'Shirt',1500),(4,'Shoes',3000),(5,'Headphones',2500);

-- Orders
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, order_date DATE, total_amount DECIMAL);
INSERT INTO orders VALUES (101,1,'2023-01-10',50000),(102,2,'2023-02-15',21500),(103,3,'2023-03-20',1500),(104,4,'2023-04-05',3000),(105,5,'2023-05-01',2500);

-- Order Items
CREATE TABLE order_items (order_item_id INT PRIMARY KEY, order_id INT, product_id INT, quantity INT);
INSERT INTO order_items VALUES (1,101,1,1),(2,102,2,1),(3,102,3,1),(4,103,3,1),(5,104,4,1);
