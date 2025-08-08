CREATE TABLE sales(
	sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    quantity INT,
    price int
    );

INSERT INTO sales (product, category, quantity, price)
VALUES
	('Laptop', 'Electronics', 2, 1000),
    ('Headphones', 'Electronics', 5, 200),
    ('T-Shirt',	'Clothing', 10,	20),
    ('Jeans', 'Clothing', 4, 50);
    
SELECT SUM(quantity) AS total_quantity_sold
FROM sales;

SELECT AVG(price) AS avg_price
FROM sales;

SELECT COUNT(*) AS total_sales
FROM sales;

SELECT category, SUM(quantity) AS total_quantity
FROM sales
GROUP BY category;

SELECT category, AVG(price) AS avg_price
FROM sales
GROUP BY category;

SELECT category, SUM(quantity) AS total_quantity
FROM sales
GROUP BY category
HAVING SUM(quantity) > 5;

SELECT COUNT(*) AS total_sales, SUM(quantity) AS total_quantity_sold, AVG(price) AS average_price
FROM sales;