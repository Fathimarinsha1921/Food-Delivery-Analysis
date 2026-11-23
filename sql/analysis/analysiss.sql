
-- Category 1: Order Analysis
-- 1. How many orders were placed during the analysis period?
-- SELECT COUNT(*) AS total_orders
-- FROM orders;


-- 2. What is the distribution of orders by order status?
-- SELECT
--     order_status,
--     COUNT(*) AS total_orders
-- FROM orders
-- GROUP BY order_status
-- ORDER BY total_orders DESC;


-- Category 2: Revenue Analysis
-- 1. Which month generated the highest revenue?
-- SELECT
--     DATE_TRUNC('month', order_date) AS order_month,
--     SUM(total_amount) AS monthly_revenue
-- FROM orders
-- WHERE order_status = 'Completed'
-- GROUP BY DATE_TRUNC('month', order_date)
-- ORDER BY monthly_revenue DESC
-- LIMIT 1;



-- 2.What is the average order value (AOV)?
-- SELECT
--     AVG(total_amount) AS average_order_value
-- FROM orders
-- WHERE order_status = 'Completed';


-- Category 3: Customer Analysis

-- 1.Which customers placed the highest number of orders?
-- SELECT
--     c.customer_id,
--     c.customer_name,
--     COUNT(o.order_id) AS total_orders
-- FROM customers c
-- JOIN orders o
-- ON c.customer_id = o.customer_id
-- GROUP BY c.customer_id, c.customer_name
-- ORDER BY total_orders DESC
-- LIMIT 5;

-- 2.Which city has the highest number of customers?
-- SELECT
--     city,
--     COUNT(*) AS total_customers
-- FROM customers
-- GROUP BY city
-- ORDER BY total_customers DESC
-- LIMIT 1;


-- Category 4: Restaurant Analysis
-- 1.Which restaurants received the highest number of orders?
-- SELECT
--     r.restaurant_name,
--     COUNT(o.order_id) AS total_orders
-- FROM restaurants r
-- INNER JOIN orders o
-- ON r.restaurant_id = o.restaurant_id
-- GROUP BY r.restaurant_id, r.restaurant_name
-- ORDER BY total_orders DESC
-- LIMIT 5;

-- 2.Which restaurants generated the highest revenue?
-- SELECT
--     r.restaurant_name,
--     SUM(o.total_amount) AS total_revenue
-- FROM restaurants r
-- JOIN orders o
-- ON r.restaurant_id = o.restaurant_id
-- WHERE o.order_status = 'Completed'
-- GROUP BY r.restaurant_id, r.restaurant_name
-- ORDER BY total_revenue DESC
-- LIMIT 5;

-- Category 5: Delivery Analysis

-- 1. What is the average delivery time?
-- SELECT
--     AVG(delivery_time) AS average_delivery_time
-- FROM deliveries
-- WHERE delivery_status = 'Delivered';


2.What percentage of orders were cancelled?
SELECT
    ROUND(
        COUNT(CASE
            WHEN order_status = 'Cancelled' THEN 1
        END) * 100.0 / COUNT(*),
        2
    ) AS cancellation_percentage
FROM orders;







































