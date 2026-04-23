USE bootcamp;

-- BASIC SELECT
SELECT * FROM customers;

SELECT name FROM customers;

-- WHERE
SELECT * FROM customers
WHERE country = 'Belgium';

-- DISTINCT
SELECT DISTINCT name
FROM customers;

-- ORDER BY
SELECT * FROM customers
ORDER BY name;

-- LIMIT
SELECT * FROM customers
LIMIT 2;
