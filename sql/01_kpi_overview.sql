-- =========================================
-- KPI OVERVIEW
-- Objective: Calculate core financial KPIs
-- =========================================

SELECT 
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) * 1.0 / SUM(Sales), 4) AS profit_margin
FROM sales;

-- Insight:
-- Overall profit margin equals 12.47%.
-- The business is profitable, but margin indicates moderate profitability.
