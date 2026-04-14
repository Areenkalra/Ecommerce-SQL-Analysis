-- E-commerce Sales Analysis Project
-- Author: Areen Kalra

-- 1. Preview Data
SELECT * FROM ecommerce LIMIT 10;

-- 2. Total Orders
SELECT COUNT(*) AS total_orders
FROM ecommerce;

-- 3. Orders by Status
SELECT "Status", COUNT(*) AS order_count
FROM ecommerce
GROUP BY "Status"
ORDER BY order_count DESC;

-- 4. Orders by Sales Channel
SELECT "Sales Channel", COUNT(*) AS total_orders
FROM ecommerce
GROUP BY "Sales Channel"
ORDER BY total_orders DESC;

-- 5. Fulfilment Analysis
SELECT "Fulfilment", COUNT(*) AS total_orders
FROM ecommerce
GROUP BY "Fulfilment"
ORDER BY total_orders DESC;

-- 6. Orders by Service Level
SELECT "ship-service-level", COUNT(*) AS total_orders
FROM ecommerce
GROUP BY "ship-service-level"
ORDER BY total_orders DESC;

-- 7. Monthly Order Trend
SELECT substr("Date", 1, 7) AS month,
       COUNT(*) AS total_orders
FROM ecommerce
GROUP BY month
ORDER BY month;

-- 8. Cancelled Orders Analysis
SELECT COUNT(*) AS cancelled_orders
FROM ecommerce
WHERE "Status" = 'Cancelled';