-- LeetCode 184: Department Highest Salary
-- Approach: rank employee salaries within each department using DENSE_RANK()
-- Learning: window functions make top-per-group queries simple and readable

--Solution
SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM (
    SELECT *,
           DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM Employee
) e
JOIN Department d ON e.departmentId = d.id
WHERE rnk = 1;

