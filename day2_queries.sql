USE bootcamp;

SELECT * FROM customers ORDER BY name;

SELECT * FROM customers ORDER BY name DESC;

SELECT * FROM customers LIMIT 2;

SELECT DISTINCT country FROM customers;

SELECT * FROM customers WHERE name LIKE 'T%';

SELECT * FROM customers WHERE name LIKE '%a%';
