-- =========================================
-- PROFITABILITY BY CATEGORY
-- =========================================

SELECT 
    Category,
    ROUND(SUM(Profit), 2) AS total_profit
FROM sales
GROUP BY Category
ORDER BY total_profit DESC;


-- =========================================
-- TOP 5 MOST PROFITABLE SUB-CATEGORIES
-- =========================================

SELECT 
    "Sub-Category",
    ROUND(SUM(Profit), 2) AS total_profit
FROM sales
GROUP BY "Sub-Category"
ORDER BY total_profit DESC
LIMIT 5;


-- =========================================
-- TOP 5 LEAST PROFITABLE SUB-CATEGORIES
-- =========================================

SELECT 
    "Sub-Category",
    ROUND(SUM(Profit), 2) AS total_profit
FROM sales
GROUP BY "Sub-Category"
ORDER BY total_profit ASC
LIMIT 5;
