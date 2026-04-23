USE bootcamp;

-- AND
SELECT * FROM customers
WHERE country = 'Belgium' AND name LIKE 'E%';

-- OR
SELECT * FROM customers
WHERE country = 'France' OR country = 'Germany';

-- BETWEEN
SELECT * FROM customers
WHERE id BETWEEN 1 AND 3;

-- IN
SELECT * FROM customers
WHERE country IN ('Belgium', 'France');

-- GROUP BY + COUNT
SELECT country, COUNT(*)
FROM customers
GROUP BY country;
