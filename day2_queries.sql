USE bootcamp;

-- ORDER BY ASC
SELECT * FROM customers
ORDER BY name;

-- ORDER BY DESC
SELECT * FROM customers
ORDER BY name DESC;

-- LIMIT
SELECT * FROM customers
LIMIT 2;

-- DISTINCT
SELECT DISTINCT country
FROM customers;

-- LIKE STARTS WITH T
SELECT * FROM customers
WHERE name LIKE 'T%';

-- LIKE CONTAINS A
SELECT * FROM customers
WHERE name LIKE '%a%';
