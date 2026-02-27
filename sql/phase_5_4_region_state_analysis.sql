-- Phase 5.4: Region & State-wise Sales Analysis
USE ecommerce_analysis;

SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT 
    Region,
    ROUND(
        (SUM(Sales) / (SELECT SUM(Sales) FROM sales_data)) * 100, 
        2
    ) AS Sales_Percentage
FROM sales_data
GROUP BY Region
ORDER BY Sales_Percentage DESC;

SELECT 
    State,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT 
    Region,
    State,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Region, State
ORDER BY Region, Total_Sales DESC;
