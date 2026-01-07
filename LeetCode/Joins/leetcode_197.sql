-- LeetCode 197: Rising Temperature
-- Approach: self-join weather records on consecutive dates and compare temperatures
-- Learning: self joins help compare rows across different time periods

--solution
SELECT w1.id
FROM Weather w1
JOIN Weather w2 ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature;
