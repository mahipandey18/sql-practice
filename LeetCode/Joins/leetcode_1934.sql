-- LeetCode 1934: Confirmation Rate
-- Approach: left join signups with confirmations and average binary confirmation values
-- Learning: averaging 1s and 0s is a simple way to compute rates in SQL

--Solution
SELECT s.user_id, 
    ROUND(avg(IF(c.action = 'confirmed', 1, 0)),2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;
