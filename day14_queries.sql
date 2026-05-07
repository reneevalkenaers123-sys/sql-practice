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

-- Customer segmentation
SELECT Customer,
       CASE
           WHEN Sales > 1000 THEN 'High Value'
           WHEN Sales > 500 THEN 'Medium Value'
           ELSE 'Low Value'
       END AS customer_segment
FROM sales_data;

-- Products below average sales
SELECT Product, Sales
FROM sales_data
WHERE Sales < (
    SELECT AVG(Sales)
    FROM sales_data
);

-- KPI report
SELECT
    COUNT(*) AS total_orders,
    SUM(Sales) AS total_revenue,
    AVG(Sales) AS average_sale
FROM sales_data;
