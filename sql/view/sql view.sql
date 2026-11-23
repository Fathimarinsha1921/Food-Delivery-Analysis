-- CREATE VIEW food_delivery_order_details AS
-- SELECT
--     o.order_id,
--     c.customer_name,
--     c.city AS customer_city,
--     r.restaurant_name,
--     r.cuisine_type,
--     o.order_date,
--     o.order_status,
--     o.total_amount,
--     d.delivery_person,
--     d.delivery_time,
--     d.delivery_status
-- FROM orders o
-- JOIN customers c
--     ON o.customer_id = c.customer_id
-- JOIN restaurants r
--     ON o.restaurant_id = r.restaurant_id
-- LEFT JOIN deliveries d
--     ON o.order_id = d.order_id;

	SELECT *
FROM food_delivery_order_details;