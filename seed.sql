-- Customers
INSERT INTO customers (name, email, city) VALUES
('Alice Johnson', 'alice@example.com', 'New York'),
('Bob Smith', 'bob@example.com', 'Chicago'),
('Charlie Davis', 'charlie@example.com', 'Los Angeles');

-- Products
INSERT INTO products (name, category, price) VALUES
('Laptop', 'Electronics', 1200.00),
('Headphones', 'Electronics', 150.00),
('Coffee Maker', 'Home Appliances', 85.00),
('Desk Chair', 'Furniture', 250.00);

-- Orders
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2025-08-01'),
(2, '2025-08-02'),
(3, '2025-08-03');

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 4, 1),
(3, 3, 1),
(3, 1, 1);
