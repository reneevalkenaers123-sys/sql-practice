-- Customer value segmentation
SELECT Customer,
       SUM(Sales) AS total_sales,
       CASE
           WHEN SUM(Sales) >= 1000 THEN 'High Value'
           WHEN SUM(Sales) >= 500 THEN 'Medium Value'
           ELSE 'Low Value'
       END AS customer_segment
FROM sales_data
GROUP BY Customer
ORDER BY total_sales DESC;


-- Product performance label
SELECT Product,
       SUM(Sales) AS total_sales,
       CASE
           WHEN SUM(Sales) >= 800 THEN 'Top Performer'
           WHEN SUM(Sales) >= 300 THEN 'Average Performer'
           ELSE 'Low Performer'
       END AS performance_label
FROM sales_data
GROUP BY Product
ORDER BY total_sales DESC;


-- Region KPI status
SELECT Region,
       SUM(Sales) AS total_sales,
       CASE
           WHEN SUM(Sales) >= 1500 THEN 'Strong Region'
           WHEN SUM(Sales) >= 700 THEN 'Stable Region'
           ELSE 'Weak Region'
       END AS region_status
FROM sales_data
GROUP BY Region
ORDER BY total_sales DESC;


-- Category business priority
SELECT Category,
       SUM(Sales) AS total_sales,
       AVG(Sales) AS average_sale,
       CASE
           WHEN SUM(Sales) >= 1200 AND AVG(Sales) >= 300 THEN 'High Priority'
           WHEN SUM(Sales) >= 600 THEN 'Medium Priority'
           ELSE 'Low Priority'
       END AS business_priority
FROM sales_data
GROUP BY Category
ORDER BY total_sales DESC;


-- Sales size classification
SELECT Product,
       Sales,
       CASE
           WHEN Sales >= 500 THEN 'Large Sale'
           WHEN Sales >= 200 THEN 'Medium Sale'
           ELSE 'Small Sale'
       END AS sales_size
FROM sales_data
ORDER BY Sales DESC;
