-- LeetCode 607: sales person
-- Approach: use a subquery to find salespersons who have orders with company name 'RED' and exclude them using not in
-- Learning: not in is useful for exclusion-based queries and helps identify records that do not satisfy a given condition

--solution
SELECT s.name
FROM SalesPerson s
WHERE s.sales_id NOT IN(
    SELECT o.sales_id
    FROM Orders o
    JOIN Company c ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);
