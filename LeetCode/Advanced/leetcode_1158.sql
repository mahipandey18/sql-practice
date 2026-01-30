-- LeetCode 1158: Market Analysis I
-- Approach: LEFT JOIN Users with Orders and apply a year filter to count only orders placed in 2019 per buyer
-- Learning: Placing conditions in the JOIN (or using CASE) allows accurate counting while keeping users with zero orders

--Solution
SELECT u.user_id as buyer_id, u.join_date, COUNT(o.order_id) as orders_in_2019
FROM Users u 
LEFT JOIN Orders o ON u.user_id = o.buyer_id
AND year(o.order_date) = 2019
GROUP BY u.user_id, u.join_date;
