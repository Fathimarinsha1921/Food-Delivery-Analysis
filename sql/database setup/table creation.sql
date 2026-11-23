-- CREATE TABLE customers (
--     customer_id INT PRIMARY KEY,
--     customer_name VARCHAR(100),
--     email VARCHAR(100),
--     city VARCHAR(50),
--     signup_date DATE
-- );

-- CREATE TABLE restaurants (
--     restaurant_id INT PRIMARY KEY,
--     restaurant_name VARCHAR(100),
--     city VARCHAR(50),
--     cuisine_type VARCHAR(50),
--     rating DECIMAL(2,1)
-- );


-- CREATE TABLE orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT REFERENCES customers(customer_id),
--     restaurant_id INT REFERENCES restaurants(restaurant_id),
--     order_date TIMESTAMP,
--     order_status VARCHAR(30),
--     total_amount DECIMAL(10,2)
-- );


-- CREATE TABLE order_items (
--     item_id INT PRIMARY KEY,
--     order_id INT REFERENCES orders(order_id),
--     item_name VARCHAR(100),
--     quantity INT,
--     price DECIMAL(10,2)
-- );

CREATE TABLE deliveries (
    delivery_id INT PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    delivery_person VARCHAR(100),
    delivery_time INT,
    delivery_status VARCHAR(30)
);

