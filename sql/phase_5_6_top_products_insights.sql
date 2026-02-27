-- Phase 5.6: Top Products & Business Insights
USE ecommerce_analysis;

SELECT 
    Product_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT 
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;

SELECT 
    Order_ID,
    ROUND(SUM(Sales), 2) AS Order_Value
FROM sales_data
GROUP BY Order_ID
ORDER BY Order_Value DESC
LIMIT 10;

SELECT 
    Product_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Product_Name
ORDER BY Total_Sales DESC;
