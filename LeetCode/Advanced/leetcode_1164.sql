-- LeetCode 1164: Product Price at a Given Date
-- Approach: For each product, find the latest price change on or before the given date and use 10 if no change exists
-- Learning: Correlated subqueries are useful for retrieving the most recent record based on a condition

--Solution
SELECT distinct p1.product_id, IFNULL(
    (SELECT p2.new_price
    FROM Products p2
    WHERE p2.product_id = p1.product_id
    AND p2.change_date <= '2019-08-16'
    ORDER BY change_date desc
    LIMIT 1), 10
) as price
FROM Products p1;
