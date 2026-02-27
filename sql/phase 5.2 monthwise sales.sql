USE ecommerce_analysis;

SELECT 
    Month,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Month
ORDER BY Month;
