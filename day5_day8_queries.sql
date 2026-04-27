USE bootcamp;

-- DAY 5 : GROUP BY + COUNT
SELECT country, COUNT(*)
FROM customers
GROUP BY country;

-- DAY 5 : COUNT ALL CUSTOMERS
SELECT COUNT(*)
FROM customers;

-- DAY 6 : SUM EXAMPLE
SELECT SUM(price)
FROM products;

-- DAY 6 : AVG EXAMPLE
SELECT AVG(price)
FROM products;

-- DAY 7 : HAVING
SELECT country, COUNT(*)
FROM customers
GROUP BY country
HAVING COUNT(*) > 1;

-- DAY 7 : REVIEW COMBINATION
SELECT country, COUNT(*)
FROM customers
WHERE id BETWEEN 1 AND 4
GROUP BY country
HAVING COUNT(*) >= 1;

-- DAY 8 : INNER JOIN
SELECT customers.name, orders.product
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id;

-- DAY 8 : LEFT JOIN
SELECT customers.name, orders.product
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id;

-- DAY 8 : RIGHT JOIN
SELECT customers.name, orders.product
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id;

-- DAY 8 : CUSTOMERS WITHOUT ORDER
SELECT customers.name
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
WHERE orders.product IS NULL;
