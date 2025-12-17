-- LeetCode 1484: group sold products by the date
-- Approach: group records by sell_date, count distinct products, and concatenate product names using group_concat
-- Learning: group_concat helps aggregate string values, and distinct avoids duplicate counts

--solution
SELECT sell_date,count(distinct product) as num_sold, group_concat(distinct product order by product separator ',')as products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
