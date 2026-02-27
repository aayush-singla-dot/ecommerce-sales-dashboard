USE ecommerce_analysis;

SELECT 
    Year,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Year
ORDER BY Year;

