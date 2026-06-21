-- ============================================
-- Monthly Sales
-- ============================================

SELECT
Year,
Month,
ROUND(SUM(Sales),2) AS Monthly_Sales
FROM superstore
GROUP BY Year, Month
ORDER BY Year, Month;

-- ============================================
-- Quarterly Sales
-- ============================================

SELECT
Year,
Quarter,
ROUND(SUM(Sales),2) AS Quarterly_Sales
FROM superstore
GROUP BY Year, Quarter
ORDER BY Year, Quarter;

-- ============================================
-- Yearly Sales
-- ============================================

SELECT
Year,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Year
ORDER BY Year;

-- ============================================
-- Monthly Profit
-- ============================================

SELECT
Year,
Month,
ROUND(SUM(Profit),2) AS Monthly_Profit
FROM superstore
GROUP BY Year, Month
ORDER BY Year, Month;