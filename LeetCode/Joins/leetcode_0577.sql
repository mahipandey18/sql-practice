-- LeetCode 577: Employee Bonus
-- Approach: left join employee with bonus and filter employees with no bonus or bonus < 1000
-- Learning: left join preserves employees without matching rows in the joined table

--Solution
SELECT e.name, b.bonus 
FROM Employee e
LEFT JOIN Bonus b ON e.empId = b.empId
WHERE b.bonus IS NULL OR b.bonus < 1000;
