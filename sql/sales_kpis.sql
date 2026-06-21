-- ============================================
-- Total Sales
-- ============================================

SELECT
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore;

-- ============================================
-- Total Profit
-- ============================================

SELECT
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore;

-- ============================================
-- Average Order Value
-- ============================================

SELECT
ROUND(
SUM(Sales) /
COUNT(DISTINCT [Order ID]),
2
) AS Average_Order_Value
FROM superstore;

-- ============================================
-- Sales By Category
-- ============================================

SELECT
Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- ============================================
-- Profile By Category
-- ============================================

SELECT
Category,
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- ============================================
-- Sales By Region
-- ============================================

SELECT
Region,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- ============================================
-- Profit By Region
-- ============================================

SELECT
Region,
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

-- ============================================
-- Top 10 Products By Sales
-- ============================================

SELECT
[Product Name],
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY [Product Name]
ORDER BY Total_Sales DESC
LIMIT 10;

-- ============================================
-- Worst 10 Products By Profit
-- ============================================

SELECT
[Product Name],
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY [Product Name]
ORDER BY Total_Profit ASC
LIMIT 10;