-- LeetCode 181: Employees Earning More Than Their Managers
-- Approach: use a correlated subquery to fetch each employee’s manager salary and compare
-- Learning: correlated subqueries allow row-wise comparisons without explicit joins

--Solution
SELECT name as Employee
FROM Employee e 
WHERE salary > (
    SELECT salary
    FROM Employee
    WHERE id = e.managerId
);
