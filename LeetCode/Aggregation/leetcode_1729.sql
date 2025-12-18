-- LeetCode 1729: Find Followers Count
-- Approach: group rows by user_id and count followers for each user
-- Learning: aggregate functions require group by, and aliases improve result readability

--solution
SELECT user_id, count(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;
