-- LeetCode 1068: Product Sales Analysis I
-- Approach: join sales with product table to fetch product name along with year and price
-- Learning: group by is unnecessary when no aggregation is performed

--Solution
SELECT product_name, year, price 
FROM Sales s
JOIN Product p ON s.product_id = p.product_id;
