-- =========================================
-- PROFIT BY REGION
-- =========================================

SELECT 
    Region,
    ROUND(SUM(Profit), 2) AS total_profit
FROM sales
GROUP BY Region
ORDER BY total_profit DESC;

-- =========================================
-- PROFIT BY STATE
-- =========================================

SELECT 
    State,
    ROUND(SUM(Profit), 2) AS total_profit
FROM sales
GROUP BY State
ORDER BY total_profit DESC;
