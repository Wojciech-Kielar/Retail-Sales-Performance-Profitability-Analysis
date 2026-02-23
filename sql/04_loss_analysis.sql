-- =========================================
-- LOSS-MAKING ORDERS ANALYSIS
-- =========================================

SELECT 
    COUNT(*) AS total_orders,
    SUM(CASE WHEN Profit < 0 THEN 1 ELSE 0 END) AS loss_orders,
    ROUND(
        100.0 * SUM(CASE WHEN Profit < 0 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS loss_percent
FROM sales;
