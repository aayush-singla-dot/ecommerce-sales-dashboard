-- Phase 5.3: Category-wise Sales Analysis
-- Objective: Identify top performing categories and sub-categories
USE ecommerce_analysis;

SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT 
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;

SELECT 
    Category,
    ROUND(
        (SUM(Sales) / (SELECT SUM(Sales) FROM sales_data)) * 100, 
        2
    ) AS Sales_Percentage
FROM sales_data
GROUP BY Category
ORDER BY Sales_Percentage DESC;

SELECT 
    Category,
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Category, Sub_Category
ORDER BY Category, Total_Sales DESC;
