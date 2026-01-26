-- LeetCode 184: Department Highest Salary
-- Approach: use a correlated subquery to find the maximum salary per department
-- Learning: correlated subqueries allow row-wise comparisons within grouped categories

--Solution
SELECT d.name as Department, e.name as Employee, e.salary as Salary 
FROM Employee e
JOIN Department d ON e.departmentId = d.id
WHERE e.salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE departmentId = e.departmentId
);
