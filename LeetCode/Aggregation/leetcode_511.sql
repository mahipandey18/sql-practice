-- LeetCode 511: Game Play Analysis I
-- Approach: group records by player_id and find the minimum event_date for each player
-- Learning: aggregate functions like min help extract first or earliest values per group

--solution
SELECT player_id, MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;
