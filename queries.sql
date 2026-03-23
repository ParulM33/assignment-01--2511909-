-- Q1:
SELECT c.customer_name, SUM(o.total_amount) FROM customers c JOIN orders o ON c.customer_id=o.customer_id WHERE c.city='Mumbai' GROUP BY c.customer_name;

-- Q2:
SELECT p.product_name, SUM(oi.quantity) FROM products p JOIN order_items oi ON p.product_id=oi.product_id GROUP BY p.product_name ORDER BY SUM(oi.quantity) DESC LIMIT 3;

-- Q3:
SELECT COUNT(DISTINCT customer_id) FROM orders;

-- Q4:
SELECT * FROM orders WHERE total_amount>10000 ORDER BY total_amount DESC;

-- Q5:
SELECT p.product_name FROM products p LEFT JOIN order_items oi ON p.product_id=oi.product_id WHERE oi.product_id IS NULL;
