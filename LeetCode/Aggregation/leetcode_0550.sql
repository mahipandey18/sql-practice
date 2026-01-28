-- LeetCode 550: Game Play Analysis IV
-- Approach: Use a subquery to find each player’s first login, then select rows where event_date minus 1 equals that first login, counting these players and dividing by total players
-- Technique: Tuple comparison with IN (player_id, date) and aggregation to calculate the fraction of players who returned the next day

--Solution
SELECT ROUND(
    COUNT(a1.player_id)/ (
        SELECT COUNT(distinct a3.player_id) 
        FROM  Activity a3
    ) , 2) AS fraction
FROM Activity a1
WHERE (
    a1.player_id, DATE_SUB(a1.event_date, INTERVAL 1 DAY)
) IN(
    SELECT a2.player_id, MIN(a2.event_date)
    FROM Activity a2
    GROUP BY a2.player_id
);
