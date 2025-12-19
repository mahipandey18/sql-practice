-- LeetCode 1633: Percentage of Users Attended a Contest
-- Approach: count registered users per contest and divide by total users
-- Learning: use a subquery for global counts and avoid integer division

--solution
SELECT r.contest_id, ROUND((COUNT(r.user_id) * 100/(SELECT COUNT(*) FROM Users)), 2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id;
