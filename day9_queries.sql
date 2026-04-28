USE bootcamp;

-- Aliases with JOIN
SELECT c.name, o.product
FROM customers c
JOIN orders o
ON c.id = o.customer_id;

-- Subquery
SELECT name
FROM customers
WHERE id IN (
    SELECT customer_id
    FROM orders
);

-- HAVING
SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Advanced Challenge
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.order_id) > 1;
