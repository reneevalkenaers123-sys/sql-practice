-- Sales above average
SELECT Product, Sales
FROM sales_data
WHERE Sales > (
    SELECT AVG(Sales)
    FROM sales_data
);

-- Sales per region
SELECT Region, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Region;

-- Category ranking
SELECT Category, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Category
ORDER BY total_sales DESC;
