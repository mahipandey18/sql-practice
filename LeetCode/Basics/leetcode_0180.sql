-- LeetCode 180: Consecutive Numbers
-- Approach: self-join the Logs table three times to form consecutive rows using id differences
-- Learning: consecutive patterns are detected by comparing adjacent rows, not by counting frequency

--Solution
SELECT  distinct l1.num as ConsecutiveNums
FROM Logs l1, Logs l2, Logs l3
WHERE l1.id = l2.id - 1
AND l2.id = l3.id - 1
AND l1.num = l2.num
AND l2.num = l3.num;
