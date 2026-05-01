USE bootcamp;

-- Subquery: customers with orders
SELECT name
FROM customers
WHERE id IN (
    SELECT customer_id
    FROM orders
);

-- Subquery: customers without orders
SELECT name
FROM customers
WHERE id NOT IN (
    SELECT customer_id
    FROM orders
);

-- CASE WHEN
SELECT name, country,
CASE
    WHEN country = 'Belgium' THEN 'Local'
    ELSE 'Foreign'
END AS customer_type
FROM customers;

-- NULL handling
SELECT c.name, o.product
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.product IS NULL;

-- String functions
SELECT name, UPPER(name), LOWER(name), LENGTH(name)
FROM customers;

SELECT CONCAT(name, ' - ', country)
FROM customers;

-- Business challenge
SELECT 
    c.name,
    COUNT(o.order_id) AS total_orders,
    CASE
        WHEN COUNT(o.order_id) > 1 THEN 'Returning Customer'
        WHEN COUNT(o.order_id) = 1 THEN 'One-time Customer'
        ELSE 'No Orders'
    END AS customer_status
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.name;
