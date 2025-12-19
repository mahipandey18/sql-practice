-- LeetCode 1251: Average Selling Price
-- Approach: join prices with units sold using date range and compute weighted average safely
-- Learning: NULLIF prevents division by zero and left join handles products with no sales

--solution
SELECT p.product_id, IFNULL(ROUND(SUM(u.units * p.price) / NULLIF(SUM(u.units), 0), 2), 0) AS average_price
FROM Prices p 
LEFT JOIN UnitsSold u ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
