-- Phase 5.5: Customer Segment Analysis
USE ecommerce_analysis;

SELECT 
    Segment,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT 
    Segment,
    ROUND(
        (SUM(Sales) / (SELECT SUM(Sales) FROM sales_data)) * 100,
        2
    ) AS Sales_Percentage
FROM sales_data
GROUP BY Segment
ORDER BY Sales_Percentage DESC;

SELECT 
    Year,
    Segment,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Year, Segment
ORDER BY Year, Total_Sales DESC;

