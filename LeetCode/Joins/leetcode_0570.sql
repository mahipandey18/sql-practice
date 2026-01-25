-- LeetCode 570: Managers with at Least 5 Direct Reports
-- Approach: self join employees to count direct reports per manager using group by and having
-- Learning: having is required for filtering aggregated counts, not where

--Solution
SELECT e.name
FROM Employee e
JOIN Employee m ON e.id = m.managerId
GROUP BY e.id
HAVING COUNT(m.id) >= 5
